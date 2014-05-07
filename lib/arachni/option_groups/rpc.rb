=begin
    Copyright 2010-2014 Tasos Laskos <tasos.laskos@gmail.com>
    All rights reserved.
=end

module Arachni::OptionGroups

# Holds {Arachni::RPC::Client} and {Arachni::RPC::Server} options.
#
# @author Tasos "Zapotek" Laskos <tasos.laskos@gmail.com>
class RPC < Arachni::OptionGroup

    # @return   [String]
    #   Path to the UNIX socket to use for RPC communication.
    #
    # @see RPC::Server::Base
    attr_accessor :server_socket

    # @return   [String]   Hostname or IP address for the RPC server.
    #
    # @see RPC::Server::Base
    attr_accessor :server_address

    # @return   [Integer]   RPC server port.
    #
    # @see RPC::Server::Base
    attr_accessor :server_port

    # @return   [String]
    #   Path to an SSL certificate authority file in PEM format.
    #
    # @see RPC::Server::Base
    # @see RPC::Client::Base
    attr_accessor :ssl_ca

    # @return   [String]
    #   Path to a server SSL private key in PEM format.
    #
    # @see RPC::Server::Base
    attr_accessor :server_ssl_private_key

    # @return   [String]
    #   Path to server SSL certificate in PEM format.
    #
    # @see RPC::Server::Base
    attr_accessor :server_ssl_certificate

    # @return   [String]
    #   Path to a client SSL private key in PEM format.
    #
    # @see RPC::Client::Base
    attr_accessor :client_ssl_private_key

    # @return   [String]
    #   Path to client SSL certificate in PEM format.
    #
    # @see RPC::Client::Base
    attr_accessor :client_ssl_certificate

    # @return [Integer] Maximum retries for failed RPC calls.
    #
    # @see RPC::Client::Base
    attr_accessor :client_max_retries

    set_defaults(
        server_address: '127.0.0.1',
        server_port:     7331
    )

end
end
