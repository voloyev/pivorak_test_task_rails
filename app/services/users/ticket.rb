module Users
  class Ticket
    def initialize(params)
      @ticket = params[:ticket]
      @user = params[:user]
    end

    def self.add(params = {})
      new(params).call
    end

    def call
      add_ticket
    end

    private

    attr_reader :ticket, :user

    def add_ticket
      user.tickets << ticket
    end
  end
end
