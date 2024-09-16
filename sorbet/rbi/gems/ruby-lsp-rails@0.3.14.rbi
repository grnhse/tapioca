# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ruby-lsp-rails` gem.
# Please instead update this file by running `bin/tapioca gem ruby-lsp-rails`.


# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/active_support_test_case_helper.rb#4
module RubyLsp; end

# # Supported features
#
# - [Hover](rdoc-ref:RubyLsp::Rails::Hover)
# - [CodeLens](rdoc-ref:RubyLsp::Rails::CodeLens)
# - [DocumentSymbol](rdoc-ref:RubyLsp::Rails::DocumentSymbol)
# - [Definition](rdoc-ref:RubyLsp::Rails::Definition)
#
# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/active_support_test_case_helper.rb#5
module RubyLsp::Rails; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/active_support_test_case_helper.rb#6
module RubyLsp::Rails::ActiveSupportTestCaseHelper
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/active_support_test_case_helper.rb#10
  sig { params(node: ::Prism::CallNode).returns(T.nilable(::String)) }
  def extract_test_case_name(node); end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#20
class RubyLsp::Rails::Addon < ::RubyLsp::Addon
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#24
  sig { void }
  def initialize; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#47
  sig { override.params(global_state: ::RubyLsp::GlobalState, message_queue: ::Thread::Queue).void }
  def activate(global_state, message_queue); end

  # Creates a new CodeLens listener. This method is invoked on every CodeLens request
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#75
  sig do
    override
      .params(
        response_builder: RubyLsp::ResponseBuilders::CollectionResponseBuilder[::LanguageServer::Protocol::Interface::CodeLens],
        uri: ::URI::Generic,
        dispatcher: ::Prism::Dispatcher
      ).void
  end
  def create_code_lens_listener(response_builder, uri, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#110
  sig do
    override
      .params(
        response_builder: RubyLsp::ResponseBuilders::CollectionResponseBuilder[T.any(::LanguageServer::Protocol::Interface::Location, ::LanguageServer::Protocol::Interface::LocationLink)],
        uri: ::URI::Generic,
        node_context: ::RubyLsp::NodeContext,
        dispatcher: ::Prism::Dispatcher
      ).void
  end
  def create_definition_listener(response_builder, uri, node_context, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#96
  sig do
    override
      .params(
        response_builder: RubyLsp::ResponseBuilders::DocumentSymbol,
        dispatcher: ::Prism::Dispatcher
      ).returns(::Object)
  end
  def create_document_symbol_listener(response_builder, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#86
  sig do
    override
      .params(
        response_builder: RubyLsp::ResponseBuilders::Hover,
        node_context: ::RubyLsp::NodeContext,
        dispatcher: ::Prism::Dispatcher
      ).void
  end
  def create_hover_listener(response_builder, node_context, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#63
  sig { override.void }
  def deactivate; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#151
  sig { override.returns(::String) }
  def name; end

  # attr_reader :rails_runner_client
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#38
  sig { returns(::RubyLsp::Rails::RunnerClient) }
  def rails_runner_client; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#125
  sig { params(global_state: ::RubyLsp::GlobalState, message_queue: ::Thread::Queue).void }
  def register_additional_file_watchers(global_state:, message_queue:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#116
  sig { params(changes: T::Array[{uri: ::String, type: ::Integer}]).void }
  def workspace_did_change_watched_files(changes); end
end

# ![CodeLens demo](../../code_lens.gif)
#
# This feature adds Code Lens features for Rails applications.
#
# For Active Support test cases:
#
# - Run tests in the VS Terminal
# - Run tests in the VS Code Test Explorer
# - Debug tests
# - Run migrations in the VS Terminal
#
# For Rails controllers:
#
# - See the path corresponding to an action
# - Click on the action's Code Lens to jump to its declaration in the routes.
#
# Note: This depends on a support for the `rubyLsp.openFile` command.
# For the VS Code extension this is built-in, but for other editors this may require some custom configuration.
#
# The
# [code lens](https://microsoft.github.io/language-server-protocol/specification#textDocument_codeLens)
# request informs the editor of runnable commands such as tests.
# It's available for tests which inherit from `ActiveSupport::TestCase` or one of its descendants, such as
# `ActionDispatch::IntegrationTest`.
#
# # Example:
#
# For the following code, Code Lenses will be added above the class definition above each test method.
#
# ```ruby
# Run
# class HelloTest < ActiveSupport::TestCase # <- Will show code lenses above for running or debugging the whole test
#   test "outputs hello" do # <- Will show code lenses above for running or debugging this test
#     # ...
#   end
#
#   test "outputs goodbye" do # <- Will show code lenses above for running or debugging this test
#     # ...
#   end
# end
# ```
#
# # Example:
# ```ruby
# Run
# class AddFirstNameToUsers < ActiveRecord::Migration[7.1]
#   # ...
# end
# ```
#
# The code lenses will be displayed above the class and above each test method.
#
# Note: When using the Test Explorer view, if your code contains a statement to pause execution (e.g. `debugger`) it
# will cause the test runner to hang.
#
# For the following code, assuming the routing contains `resources :users`, a Code Lens will be seen above each
# action.
#
# ```ruby
# class UsersController < ApplicationController
#   GET /users(.:format)
#   def index # <- Will show code lens above for the path
#   end
# end
# ```
#
# Note: Complex routing configurations may not be supported.
#
# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#74
class RubyLsp::Rails::CodeLens
  include ::RubyLsp::Requests::Support::Common
  include ::RubyLsp::Rails::ActiveSupportTestCaseHelper

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#88
  sig do
    params(
      client: ::RubyLsp::Rails::RunnerClient,
      global_state: ::RubyLsp::GlobalState,
      response_builder: RubyLsp::ResponseBuilders::CollectionResponseBuilder[::LanguageServer::Protocol::Interface::CodeLens],
      uri: ::URI::Generic,
      dispatcher: ::Prism::Dispatcher
    ).void
  end
  def initialize(client, global_state, response_builder, uri, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#109
  sig { params(node: ::Prism::CallNode).void }
  def on_call_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#137
  sig { params(node: ::Prism::ClassNode).void }
  def on_class_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#161
  sig { params(node: ::Prism::ClassNode).void }
  def on_class_node_leave(node); end

  # Although uncommon, Rails tests can be written with the classic "def test_name" syntax.
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#121
  sig { params(node: ::Prism::DefNode).void }
  def on_def_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#172
  sig { params(node: ::Prism::ModuleNode).void }
  def on_module_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#177
  sig { params(node: ::Prism::ModuleNode).void }
  def on_module_node_leave(node); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#192
  sig { params(node: ::Prism::DefNode).void }
  def add_jump_to_view(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#248
  sig { params(node: ::Prism::Node, name: ::String, command: ::String).void }
  def add_migrate_code_lens(node, name:, command:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#216
  sig { params(node: ::Prism::DefNode).void }
  def add_route_code_lens_to_action(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#261
  sig { params(node: ::Prism::Node, name: ::String, command: ::String, kind: ::Symbol).void }
  def add_test_code_lens(node, name:, command:, kind:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#184
  sig { returns(T.nilable(T::Boolean)) }
  def controller?; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#238
  sig { returns(::String) }
  def migrate_command; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#243
  sig { returns(T.nilable(::String)) }
  def migration_version; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#233
  sig { returns(::String) }
  def test_command; end
end

# ![Definition demo](../../definition.gif)
#
# The [definition
# request](https://microsoft.github.io/language-server-protocol/specification#textDocument_definition) jumps to the
# definition of the symbol under the cursor.
#
# Currently supported targets:
#
# - Callbacks
# - Named routes (e.g. `users_path`)
#
# # Example
#
# ```ruby
# before_action :foo # <- Go to definition on this symbol will jump to the method
# ```
#
# Notes for named routes:
#
# - It is available only in Rails 7.1 or newer.
# - Route may be defined across multiple files, e.g. using `draw`, rather than in `routes.rb`.
# - Routes won't be found if not defined for the Rails development environment.
# - If using `constraints`, the route can only be found if the constraints are met.
# - Changes to routes won't be picked up until the server is restarted.
#
# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#30
class RubyLsp::Rails::Definition
  include ::RubyLsp::Requests::Support::Common

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#45
  sig do
    params(
      client: ::RubyLsp::Rails::RunnerClient,
      response_builder: RubyLsp::ResponseBuilders::CollectionResponseBuilder[T.any(::LanguageServer::Protocol::Interface::Location, ::LanguageServer::Protocol::Interface::LocationLink)],
      node_context: ::RubyLsp::NodeContext,
      index: ::RubyIndexer::Index,
      dispatcher: ::Prism::Dispatcher
    ).void
  end
  def initialize(client, response_builder, node_context, index, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#66
  sig { params(node: T.any(::Prism::StringNode, ::Prism::SymbolNode)).void }
  def handle_possible_dsl(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#83
  sig { params(node: ::Prism::CallNode).void }
  def on_call_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#61
  sig { params(node: ::Prism::StringNode).void }
  def on_string_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#56
  sig { params(node: ::Prism::SymbolNode).void }
  def on_symbol_node_enter(node); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#142
  sig { params(name: ::String).void }
  def collect_definitions(name); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#117
  sig { params(node: ::Prism::CallNode).void }
  def handle_association(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#98
  sig { params(node: ::Prism::CallNode).void }
  def handle_callback(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#134
  sig { params(node: ::Prism::CallNode).void }
  def handle_route(node); end
end

# ![Document Symbol demo](../../document_symbol.gif)
#
# The [document symbol](https://microsoft.github.io/language-server-protocol/specification#textDocument_documentSymbol)
# request allows users to navigate between associations, validations, callbacks and ActiveSupport test cases with
# VS Code's "Go to Symbol" feature.
#
# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#11
class RubyLsp::Rails::DocumentSymbol
  include ::RubyLsp::Requests::Support::Common
  include ::RubyLsp::Rails::ActiveSupportTestCaseHelper

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#22
  sig { params(response_builder: RubyLsp::ResponseBuilders::DocumentSymbol, dispatcher: ::Prism::Dispatcher).void }
  def initialize(response_builder, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#37
  sig { params(node: ::Prism::CallNode).void }
  def on_call_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#66
  sig { params(node: ::Prism::ClassNode).void }
  def on_class_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#71
  sig { params(node: ::Prism::ClassNode).void }
  def on_class_node_leave(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#76
  sig { params(node: ::Prism::ModuleNode).void }
  def on_module_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#81
  sig { params(node: ::Prism::ModuleNode).void }
  def on_module_node_leave(node); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#88
  sig { params(node: T.any(::Prism::ClassNode, ::Prism::ModuleNode)).void }
  def add_to_namespace_stack(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#223
  sig do
    params(
      name: ::String,
      range: ::LanguageServer::Protocol::Interface::Range,
      selection_range: ::LanguageServer::Protocol::Interface::Range
    ).void
  end
  def append_document_symbol(name:, range:, selection_range:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#98
  sig { params(node: ::Prism::CallNode, message: ::String).void }
  def handle_all_arg_types(node, message); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#197
  sig { params(node: ::Prism::CallNode, message: ::String).void }
  def handle_class_arg_types(node, message); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#168
  sig { params(node: ::Prism::CallNode, message: ::String).void }
  def handle_symbol_and_string_arg_types(node, message); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#93
  sig { params(node: T.any(::Prism::ClassNode, ::Prism::ModuleNode)).void }
  def remove_from_namespace_stack(node); end
end

# ![Hover demo](../../hover.gif)
#
# Augment [hover](https://microsoft.github.io/language-server-protocol/specification#textDocument_hover) with
# information about a model.
#
# # Example
#
# ```ruby
# User.all
# # ^ hovering here will show information about the User model
# ```
#
# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#19
class RubyLsp::Rails::Hover
  include ::RubyLsp::Requests::Support::Common

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#32
  sig do
    params(
      client: ::RubyLsp::Rails::RunnerClient,
      response_builder: RubyLsp::ResponseBuilders::Hover,
      node_context: ::RubyLsp::NodeContext,
      global_state: ::RubyLsp::GlobalState,
      dispatcher: ::Prism::Dispatcher
    ).void
  end
  def initialize(client, response_builder, node_context, global_state, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#61
  sig { params(node: ::Prism::CallNode).void }
  def on_call_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#41
  sig { params(node: ::Prism::ConstantPathNode).void }
  def on_constant_path_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#53
  sig { params(node: ::Prism::ConstantReadNode).void }
  def on_constant_read_node_enter(node); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#73
  sig { params(name: ::String).void }
  def generate_column_content(name); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#94
  sig { params(name: ::String, location: ::Prism::Location).void }
  def generate_rails_document_link_hover(name, location); end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#6
class RubyLsp::Rails::IndexingEnhancement
  include ::RubyIndexer::Enhancement

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#18
  sig do
    override
      .params(
        index: ::RubyIndexer::Index,
        owner: T.nilable(::RubyIndexer::Entry::Namespace),
        node: ::Prism::CallNode,
        file_path: ::String
      ).void
  end
  def on_call_node(index, owner, node, file_path); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#41
  sig do
    params(
      index: ::RubyIndexer::Index,
      owner: ::RubyIndexer::Entry::Namespace,
      node: ::Prism::CallNode,
      file_path: ::String
    ).void
  end
  def handle_association(index, owner, node, file_path); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#88
  sig { params(index: ::RubyIndexer::Index, owner: ::RubyIndexer::Entry::Namespace, node: ::Prism::CallNode).void }
  def handle_concern_extend(index, owner, node); end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#234
class RubyLsp::Rails::NullClient < ::RubyLsp::Rails::RunnerClient
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#238
  sig { void }
  def initialize; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#252
  sig { override.returns(::String) }
  def rails_root; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#242
  sig { override.void }
  def shutdown; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#247
  sig { override.returns(T::Boolean) }
  def stopped?; end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#264
  sig { override.returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def read_response; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#259
  sig { override.params(request: ::String, params: T.nilable(T::Hash[::Symbol, T.untyped])).void }
  def send_message(request, params = T.unsafe(nil)); end
end

class RubyLsp::Rails::Railtie < ::Rails::Railtie; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#9
class RubyLsp::Rails::RunnerClient
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#43
  sig { void }
  def initialize; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#121
  sig { params(model_name: ::String, association_name: ::String).returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def association_target_location(model_name:, association_name:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#178
  sig do
    params(
      request: ::String,
      params: T.nilable(T::Hash[::Symbol, T.untyped])
    ).returns(T.nilable(T::Hash[::Symbol, T.untyped]))
  end
  def make_request(request, params = T.unsafe(nil)); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#108
  sig { params(name: ::String).returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def model(name); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#40
  sig { returns(::String) }
  def rails_root; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#100
  sig { params(server_addon_path: ::String).void }
  def register_server_addon(server_addon_path); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#140
  sig { params(controller: ::String, action: ::String).returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def route(controller:, action:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#132
  sig { params(name: ::String).returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def route_location(name); end

  # Notifications are like messages, but one-way, with no response sent back.
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#185
  sig { params(request: ::String, params: T.nilable(T::Hash[::Symbol, T.untyped])).void }
  def send_notification(request, params = T.unsafe(nil)); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#157
  sig { void }
  def shutdown; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#168
  sig { returns(T::Boolean) }
  def stopped?; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#148
  sig { void }
  def trigger_reload; end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#228
  sig { void }
  def force_kill; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#203
  sig { overridable.returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def read_response; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#190
  sig { overridable.params(request: ::String, params: T.nilable(T::Hash[::Symbol, T.untyped])).void }
  def send_message(request, params = T.unsafe(nil)); end

  class << self
    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#14
    sig { returns(::RubyLsp::Rails::RunnerClient) }
    def create_client; end
  end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#33
class RubyLsp::Rails::RunnerClient::EmptyMessageError < ::StandardError; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#32
class RubyLsp::Rails::RunnerClient::IncompleteMessageError < ::StandardError; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#31
class RubyLsp::Rails::RunnerClient::InitializationError < ::StandardError; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#35
RubyLsp::Rails::RunnerClient::MAX_RETRIES = T.let(T.unsafe(nil), Integer)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/associations.rb#6
module RubyLsp::Rails::Support; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/associations.rb#7
module RubyLsp::Rails::Support::Associations; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/associations.rb#8
RubyLsp::Rails::Support::Associations::ALL = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#7
module RubyLsp::Rails::Support::Callbacks; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#67
RubyLsp::Rails::Support::Callbacks::ALL = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#37
RubyLsp::Rails::Support::Callbacks::CONTROLLERS = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#55
RubyLsp::Rails::Support::Callbacks::JOBS = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#8
RubyLsp::Rails::Support::Callbacks::MODELS = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/location_builder.rb#7
class RubyLsp::Rails::Support::LocationBuilder
  class << self
    # @raise [ArgumentError]
    #
    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/location_builder.rb#12
    sig { params(location_string: ::String).returns(::LanguageServer::Protocol::Interface::Location) }
    def line_location_from_s(location_string); end
  end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/rails_document_client.rb#9
class RubyLsp::Rails::Support::RailsDocumentClient
  class << self
    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/rails_document_client.rb#37
    sig { params(name: ::String).returns(T::Array[::String]) }
    def generate_rails_document_urls(name); end

    private

    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/rails_document_client.rb#66
    sig { returns(T.nilable(T::Hash[::String, T::Array[T::Hash[::Symbol, ::String]]])) }
    def build_search_index; end

    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/rails_document_client.rb#99
    sig { params(js: ::String).returns(T::Hash[::String, T::Array[T::Hash[::Symbol, ::String]]]) }
    def process_search_index(js); end

    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/rails_document_client.rb#58
    sig { returns(T.nilable(T::Hash[::String, T::Array[T::Hash[::Symbol, ::String]]])) }
    def search_index; end
  end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/rails_document_client.rb#10
RubyLsp::Rails::Support::RailsDocumentClient::RAILS_DOC_HOST = T.let(T.unsafe(nil), String)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/rails_document_client.rb#26
RubyLsp::Rails::Support::RailsDocumentClient::RAILTIES_VERSION = T.let(T.unsafe(nil), String)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/rails_document_client.rb#12
RubyLsp::Rails::Support::RailsDocumentClient::SUPPORTED_RAILS_DOC_NAMESPACES = T.let(T.unsafe(nil), Regexp)

# source://ruby-lsp-rails/lib/ruby_lsp_rails/version.rb#6
RubyLsp::Rails::VERSION = T.let(T.unsafe(nil), String)
