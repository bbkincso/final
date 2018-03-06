﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for HashCode
/// </summary>
public class HashCode
{
    public string PassHash(string data)
    {
        SHA1 sha = SHA1.Create();
        byte[] hashdata = sha.ComputeHash(Encoding.Default.GetBytes(data));
        //get it out
        StringBuilder returnValue = new StringBuilder();
        for (int i = 0; i < hashdata.Length; i++)
        {
            returnValue.Append(hashdata[i].ToString());
        }
        return returnValue.ToString();
    }
}