defmodule Backend.Handlers.Login do

  def init(req, state) do

    {:cowboy_websocket, req, state}
  end

  def websocket_init(state) do

    {:ok, state}
  end


  def websocket_handle({:text, text}, state) do


      #  %{
      #    "name" => text,
      #    "response" => "ok"
      #  }
      #  |> Poison.encode()

    {:reply, {:text, text}, state}
  end


  def websocket_info({:text, text}, state) do
    {:ok, state}
  end




  ### GenServer ###



end
