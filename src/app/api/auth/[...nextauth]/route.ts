
import CredentialsProvider from "next-auth/providers/credentials"
import prisma from "./lib/prisma";
import NextAuth from "next-auth";


const handler = NextAuth({


    providers: [

        CredentialsProvider({
            credentials:{
                email: {},
                password: {}
            },
            authorize (credentials, req){
                   
            } 
        })
    ]
})