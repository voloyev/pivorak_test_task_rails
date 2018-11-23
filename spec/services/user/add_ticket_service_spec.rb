require 'rails_helper'
require './app/services/user/add_ticket_service'

RSpec.describe Services::User::AddTicket do
  let(:user)   { build(:users) }
  let(:ticket) { build(:tickets) }

  let(:add_ticket) { described_class }
  it { add_ticket.call(user: user, ticket: ticket) }
end
