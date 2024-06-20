import NextAuth from "next-auth/next";
import CredentialsProvider from "next-auth/providers/credentials"

export const {handlers: {GET, POST}, auth} = NextAuth({

    trustHost: true,
    providers: [
        CredentialsProvider({
            name: "Credentials",
            credentials: {
                username: {labele: "Username", type: "text", placeholder: "jsmith"},
                password: {labele: "Password", type: "text", placeholder: "password"}
            },
            async authorize(credentials, req){
                try{
                    
                }
            }
        })
    ]
})