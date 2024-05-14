people = [
  %{name: "Bruno", height: 1.7},
  %{name: "Jose", height: 1.5},
  %{name: "Dave", height: 1.6},
  %{name: "Jack", height: 1.8},
  %{name: "Json", height: 1.9}
]

IO.inspect(for person = %{height: height} <- people, height >= 1.7, do: person)

data = %{name: "Bruno", state: "SP", likes: "Bear"}
# Ins't possible receive/bind map key valeu to a variable
IO.inspect(
  for key <- [:name, :likes] do
    %{^key => value} = data
    value
  end
)
