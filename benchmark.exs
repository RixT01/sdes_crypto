list = Enum.to_list(1..10_000)
map_fun = fn(i) -> [i, i * i] end

#definir mis test cases


#definir mis funciones a probar

Benchee.run(%{
  :flat_map => fn -> Enum.flat_map(list, map_fun) end,
  :map_flatten => fn -> list |> Enum.map(map_fun) |> List.flatten end
}, print: [fast_warning: false])