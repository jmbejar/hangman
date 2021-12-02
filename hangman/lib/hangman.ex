defmodule Hangman do
  alias Hangman.Impl.Game
  alias Hangman.Type

  @opaque game  :: Game.t # '@opaque' the internals of the type should remain private from anyone who imports it.

  @spec new_game() :: game
  defdelegate new_game, to: Game

  @spec make_move(game, String.t) :: {game, Type.tally}
  defdelegate make_move(game, guess), to: Game

end
