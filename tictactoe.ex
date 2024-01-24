defmodule TicTacToe do 
  def winner(board) do 
    find_winner(board)
  end

  defp find_winner({
    a,a,a,
    _,_,_,
    _,_,_
  }), do: a

  defp find_winner({
    _,_,_,
    a,a,a,
    _,_,_
  }), do: a

  defp find_winner({
    _,_,_,
    _,_,_,
    a,a,a
  }), do: a

  defp find_winner({
    a,_,_,
    a,_,_,
    a,_,_
  }), do: a

  defp find_winner({
    _,a,_,
    _,a,_,
    _,a,_
  }), do: a

  defp find_winner({
    _,_,a,
    _,_,a,
    _,_,a
  }), do: a

  defp find_winner({
    _,_,a,
    _,a,_,
    a,_,_
  }), do: a

  defp find_winner({
    a,_,_,
    _,a,_,
    _,_,a
  }), do: a

  defp find_winner(_), do: :no_winner

end
