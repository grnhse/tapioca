# typed: true
# frozen_string_literal: true

require "addon_spec_helper"
require "ruby_lsp/ruby_lsp_rails/runner_client"
require "minitest/hooks"

module RubyLsp
  module Tapioca
    class AddonSpec < Minitest::HooksSpec
      # The approach here is based on tests within the Ruby LSP Rails gem

      before(:all) do
        FileUtils.cp("spec/dummy/bin/rails", "bin/rails")
        @outgoing_queue = Thread::Queue.new
        @client = T.let(RubyLsp::Rails::RunnerClient.new(@outgoing_queue), RubyLsp::Rails::RunnerClient)
      end

      after(:all) do
        @client.shutdown

        # On Windows, the server process sometimes takes a lot longer to shutdown and may end up getting force killed,
        # which makes this assertion flaky
        assert_predicate(@client, :stopped?) unless Gem.win_platform?
        @outgoing_queue.close
        FileUtils.rm("bin/rails")
      end

      EXPECTED_RBI_PATH = "sorbet/rbi/dsl/notify_user_job.rbi"
      it "generates DSL RBIs for a gem" do
        addon_path = File.expand_path("lib/ruby_lsp/tapioca/server_addon.rb")
        @client.register_server_addon(File.expand_path(addon_path))
        @client.delegate_notification(
          server_addon_name: "Tapioca",
          request_name: "dsl",
          constants: ["NotifyUserJob"],
        )

        begin
          Timeout.timeout(10) do
            sleep(1)
            until File.exist?(EXPECTED_RBI_PATH)
            end
          end
        rescue Timeout::Error
          flunk("RBI file was not generated")
        end
      ensure
        FileUtils.rm_f(EXPECTED_RBI_PATH)
      end
    end
  end
end
