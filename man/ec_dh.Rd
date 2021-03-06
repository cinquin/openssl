% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diffie.R
\name{ec_dh}
\alias{ec_dh}
\title{Diffie-Hellman Key Agreement}
\usage{
ec_dh(key = my_key(), peerkey, password = askpass)
}
\arguments{
\item{key}{your own private key}

\item{peerkey}{the public key from your peer}

\item{password}{passed to \link{read_key} for reading protected private keys}
}
\description{
Key agreement is one-step method of creating a shared secret between two
peers. Both peers can indendently derive the joined secret by combining
his or her private key with the public key from the peer.
}
\details{
Currently only Elliptic Curve Diffie Hellman (ECDH) is implemented.
}
\examples{
\dontrun{
# Need two EC keypairs from the same curve
alice_key <- ec_keygen("P-521")
bob_key <- ec_keygen("P-521")

# Derive public keys
alice_pub <- as.list(alice_key)$pubkey
bob_pub <- as.list(bob_key)$pubkey

# Both peers can derive the (same) shared secret via each other's pubkey
ec_dh(alice_key, bob_pub)
ec_dh(bob_key, alice_pub)
}
}
\references{
\url{https://wiki.openssl.org/index.php/EVP_Key_Agreement},
\url{https://wiki.openssl.org/index.php/Elliptic_Curve_Diffie_Hellman}
}

