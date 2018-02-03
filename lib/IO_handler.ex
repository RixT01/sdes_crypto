defmodule IO_handler do


    def pairs_from_file(file_path) do
        File.read!(file_path)
        |> String.split(~r{(\r\n|\r|\n)})
        |> Enum.map(fn (x) -> splitter(x) end)
    end
    
    def splitter smooshed_string do
      [plain, cipher] = String.split(smooshed_string, ",")
      [str_flow(plain), str_flow(cipher)]
    end
  
    def str_flow str do
      :binary.bin_to_list(str)
      |> Enum.map(fn(x) -> str_to_int_tuple(x)  end)
      |> List.to_tuple
    end
  
    def str_to_int_tuple(49), do: 1

    def str_to_int_tuple(48), do: 0
  
end