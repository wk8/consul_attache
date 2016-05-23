require 'thor'

module ConsulAttache
  class Cli < Thor
    desc 'status [SERVICE_NAME] [--all-nodes]', "Print your services' status"
    long_desc <<-STATUS
    The status of a service is the worst status on all nodes running it.
    If provided a name, will print that single service's status; otherwise prints all services.
    By default, will only print unhealthy nodes, but with --all-nodes will print all of them.
    STATUS
    option :all_nodes, type: :boolean, aliases: '-a'
    def status(service_name = nil)
      # TODO
    end

    desc 'maint SERVICE_NAME [--[no-]enable] [--node NODE_NAME] [--dry-mode | -n]', 'Changes maintenance mode'
    long_desc <<-MAINT
    By default, toggles the maintenance status of the given service on the current node.
    If passed an explicit --enable flag, enables it regardless of the previous status.
    If passed an explicit --no-enable flag, disables it regardless of the previous status.
    If passed a node name, acts on that node instead of the current one.
    Dry mode prints what would happen, without actually doing anything.
    MAINT
    option :enable, type: :boolean, desc: 'Enables (or disables, with --no) maintenance mode regardless of the previous state'
    option :on, type: :string, desc: 'The name of the target node (defaults to the current node)'
    option :dry_mode, type: :boolean, aliases: '-n', desc: 'Dry mode (just prints what it would do)'
    def maint(service_name)
      # TODO
    end
  end
end
