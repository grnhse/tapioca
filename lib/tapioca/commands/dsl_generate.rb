# typed: strict
# frozen_string_literal: true

module Tapioca
  module Commands
    class DslGenerate < AbstractDsl
      private

      sig { override.void }
      def execute
        if @lsp_addon
          Loaders::Dsl.load_subset
        else
          load_application
        end

        File.write("output.txt", "Generating DSL RBIs", mode: "a")
        generate
      end

      sig { void }
      def generate
        say("Compiling DSL RBI files...")
        say("")

        rbi_files_to_purge = generate_dsl_rbi_files(@outpath, quiet: @quiet && !@verbose)
        say("")

        purge_stale_dsl_rbi_files(rbi_files_to_purge)
        say("Done", :green)
        File.write("output.txt", "DSL RBIs generated for #{@requested_constants}", mode: "a")

        if @auto_strictness
          say("")
          validate_rbi_files(
            command: default_command(:dsl, all_requested_constants.join(" ")),
            gem_dir: @gem_dir,
            dsl_dir: @outpath.to_s,
            auto_strictness: @auto_strictness,
            compilers: pipeline.active_compilers,
          )
        end

        say("All operations performed in working directory.", [:green, :bold])
        say("Please review changes and commit them.", [:green, :bold])
      ensure
        GitAttributes.create_generated_attribute_file(@outpath)
      end
    end
  end
end
