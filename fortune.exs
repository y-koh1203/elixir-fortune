defmodule Fortune do
  # entry
  def exec_fortune do
    :rand.uniform() |>
    random_to_integer |>
    decision_fortune |>
    IO.puts
  end

  # ランダム数値を10倍する
  def random_to_integer(dec) do
    dec * 10 |>
    Float.ceil()
  end

  # 数値でおみくじを判定
  def decision_fortune(dec) do
    cond do
      dec > 5.0
        -> IO.puts "okay"

      dec < 5.0
        -> "oh..."

      true -> "oh..."
    end
  end
end

# execute
Fortune.exec_fortune()
