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

greeter = fn name ->
  fn -> "Hello #{name}" end
end

bruno_greeter = greeter.("Bruno")
IO.puts(bruno_greeter.())

word1 = "Coffe"
word2 = "Late"

join_words = fn word ->
  fn wordn -> word <> " " <> wordn end
end

join_wordsn = join_words.(word1)
IO.puts(join_wordsn.(word2))

double_time = fn n -> n * 2 end
fun_apply = fn fun, value -> fun.(value) end

IO.puts(fun_apply.(double_time, 4))

num_list = [1, 2, 3, 4, 5]
double_list = Enum.map(num_list, double_time)
IO.inspect(double_list)
