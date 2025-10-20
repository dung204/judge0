class InitDb < ActiveRecord::Migration[6.1]
  def change
    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"

    create_table "judge0_clients", id: :string, force: :cascade do |t|
    end

    create_table "judge0_languages", id: :serial, force: :cascade do |t|
      t.string "name"
      t.string "compile_cmd"
      t.string "run_cmd"
      t.string "source_file"
      t.boolean "is_archived", default: false
    end

    create_table "judge0_submissions", id: :serial, force: :cascade do |t|
      t.text "source_code"
      t.integer "language_id"
      t.text "stdin"
      t.text "expected_output"
      t.text "stdout"
      t.integer "status_id"
      t.datetime "created_at"
      t.datetime "finished_at"
      t.decimal "time"
      t.integer "memory"
      t.text "stderr"
      t.string "token"
      t.integer "number_of_runs"
      t.decimal "cpu_time_limit"
      t.decimal "cpu_extra_time"
      t.decimal "wall_time_limit"
      t.integer "memory_limit"
      t.integer "stack_limit"
      t.integer "max_processes_and_or_threads"
      t.boolean "enable_per_process_and_thread_time_limit"
      t.boolean "enable_per_process_and_thread_memory_limit"
      t.integer "max_file_size"
      t.text "compile_output"
      t.integer "exit_code"
      t.integer "exit_signal"
      t.text "message"
      t.decimal "wall_time"
      t.string "compiler_options"
      t.string "command_line_arguments"
      t.boolean "redirect_stderr_to_stdout"
      t.string "callback_url"
      t.binary "additional_files"
      t.boolean "enable_network"
      t.datetime "started_at"
      t.datetime "queued_at"
    end
  end
end
