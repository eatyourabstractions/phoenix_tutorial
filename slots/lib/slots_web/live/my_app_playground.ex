defmodule SlotsWeb.DemoLive do
  use Phoenix.LiveView

  # import MyAppWeb.One
  # import MyAppWeb.Two
  # import MyAppWeb.Three
  # import MyAppWeb.Four
  import MyAppWeb.Five

  # this uses modal_One
  # def render(assigns) do
  #   ~H"""
  #     <.modal title="My basic modal" body="My modal content"></.modal>
  #   """
  # end

  # this uses modal_two
  # def render(assigns) do
  #       ~H"""
  #         <.modal title="My basic modal">

  #           <!-- body content  -->
  #           <div class="text-center justify-center items-center">
  #             <h1 class="text-green-600">Great!</h1>
  #             <p>Your settings have been <strong>successfully</strong> saved</p>
  #             <div class="flex items-center justify-center">
  #               <p>this is the second modal, your welcome</p>
  #             </div>
  #           </div>
  #           <!-- body content  -->

  #         </.modal>
  #      """
  # end

    # def render(assigns) do
    #         ~H"""
    #   <.modal title="My basic modal">
    #     <!-- named slot: header  -->
    #     <:header>
    #       <div class="border-b-4 border-green-600">
    #         Success modal
    #       </div>
    #     </:header>

    #     <!-- inner_block slot  -->
    #     <div class="text-center justify-center items-center">
    #       <h1 class="text-green-600">Great!</h1>
    #       <p>Your settings have been <strong>successfully</strong> saved</p>
    #       <div class="flex items-center justify-center">
    #         <p>That's all folks</p>
    #       </div>
    #     </div>

    #     <!-- footer named slots  -->
    #     <:confirm>
    #       Return to profile
    #     </:confirm>

    #     <:cancel>
    #       Back to index
    #     </:cancel>

    #   </.modal>
    #   """
    # end

    # def render(assigns) do
    #   ~H"""
    #     <.modal title="My basic modal">
    #       <!-- named slot: header  -->
    #       <:header>
    #         <div class="border-b-4 border-green-600">
    #           Success modal
    #         </div>
    #       </:header>

    #       <!-- inner_block slot  -->
    #       <div class="text-center justify-center items-center">
    #         <h1 class="text-green-600">Great!</h1>
    #         <p>Your settings have been <strong>successfully</strong> saved</p>
    #         <div class="flex items-center justify-center">
    #           <p>That's all folks</p>
    #         </div>
    #       </div>

    #       <!-- footer named slots  -->
    #       <:confirm>
    #         Return to profile
    #       </:confirm>

    #       <:cancel>
    #         Back to index
    #       </:cancel>

    #     </.modal>
    #     """
    #     end

        def render(assigns) do
          ~H"""
            <.modal title="My basic modal">
              <!-- named slot: header  -->
              <:header>
                <div class="border-b-4 border-green-600">
                  Success modal
                </div>
              </:header>

              <!-- inner_block slot  -->
              <div class="text-center justify-center items-center">
                <h1 class="text-green-600">Great!</h1>
                <p>Your settings have been <strong>successfully</strong> saved</p>
                <div class="flex items-center justify-center">
                  <p>That's all folks</p>
                </div>
              </div>

              <!-- footer named slots  -->
              <!-- named slot: confirm 1 -->
              <:confirm classes="bg-green-400 rounded-full text-slate-50 text-sm p-2">
                Return to profile
              </:confirm>

              <!-- named slot: cancel 1 -->
              <:cancel classes="bg-emerald-400 rounded-full text-slate-50 text-sm p-2">
                Back to index
              </:cancel>

            </.modal>
            """
            end
end
