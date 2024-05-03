my_name = "Bruno Ferromega"
new_name = <<66, 82, 85, 78, 79>>

IO.puts("Hello #{my_name}")
IO.puts("THIS IS BINARY STREAM: #{new_name}")

list1 = [1, 2, 3]
list1 = [list1 | 4]
list1 |> IO.inspect(charlist: :as_list)

ex_name = "elixir"
ex_name = String.capitalize(ex_name)
ex_name |> IO.puts()

{_, current_dir} = File.cwd()
IO.puts("Current woring directory: #{current_dir}")

file_txt = current_dir <> "/test.txt"

IO.puts(file_txt)

handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  {_, err} -> "Error: #{:file.format_error(err)}"
end

opened_file = File.open(file_txt)

IO.puts(handle_open.(opened_file))
