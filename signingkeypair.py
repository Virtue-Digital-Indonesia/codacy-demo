class SigningKeyPair(object):

    # ...

    def Verify(self, msg, sig_bytes):
        """
        Return True if the signature corresponds to the message.

        @param msg: message that has been signed
        @type msg: string

        @param sig_bytes: raw byte string of the signature
        @type sig_bytes: string

        @return: True if signature is valid for message. False otherwise.
        @rtype: boolean
        """
        return self.Sign(msg) == sig_bytes
