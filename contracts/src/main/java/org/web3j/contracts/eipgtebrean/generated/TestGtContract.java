package org.web3j.contracts.eipgtebrean.generated;

import com.GtContract;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;
import org.web3j.tx.gas.DefaultGasProvider;

import java.math.BigInteger;

public class TestGtContract {
    public static void main(String[] args) {
        Web3j web3j =
                Web3j.build(
                        new HttpService(
                                "https://kovan.infura.io/v3/d25228aea8ff46d69e6185526e65f1de"));
        Credentials credentials =
                Credentials.create("ebf575f95890c2140f3189433328574033304f542a2b9eff71e1901caa3f46b1");

        GtContract test = new GtContract("0x2f9f0701EB1335F523005655E3150481BCfda005", web3j, credentials, new DefaultGasProvider());

        try {
           BigInteger var = test.balanceOf("0x7a9837F79347385ae6146c7Ff132ef2915b1d7FC").send();
           System.out.println(var);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
