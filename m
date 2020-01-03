Return-Path: <open-iscsi+bncBC4KT6XCR4NRBMFRX3YAKGQEMM7GPZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E3E12FD2B
	for <lists+open-iscsi@lfdr.de>; Fri,  3 Jan 2020 20:40:35 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id c202sf26116607qkg.4
        for <lists+open-iscsi@lfdr.de>; Fri, 03 Jan 2020 11:40:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578080432; cv=pass;
        d=google.com; s=arc-20160816;
        b=FnDQIzaKO8XSEONR0/3v4yvkFlkySVMOWskDnUzM+Vf1z8LHPzOV8lQVpOVKbSmlWU
         1lDIrTpHWoBVJebGqF9Bp0yqV/apScyNQWmVzgf0ca7dc3/EeKEg2NKlyJsGuapruizq
         hq6ztDsob23LWF79ZIOm7n76bLvdNNcvMjFoSGLeZJyTJTm0VLSVOcjcs4wzUT1cjFZ8
         Bjj+x47pQR1PL9LND0V+xTEDROsxGBxWHkSVh7fqHTkX7UKHbERxJtc73PszLcAMFYud
         yEK2424nZahT3eciRmVTIm9xc7UpHSvWrjxV4CZCnQUx4TGt6N1bNyzc/JsN8cQDcuEh
         xbGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PjoHPapvdmywrXqIVGVLlKqd0zXSL53qENSV8hoD6zw=;
        b=V6KlGUp4dtbMBvq2sYfGX9OykUQfljwZ3RBWfhZ6DNE5ChP3M4VnJFZezNP76jNB1S
         Ft67uXPornYsj086Gj6m5aHRfLr1S76s4Bj9tsDlMZNArDniaEP+sud7i6Pl8lDsKNR5
         IN+Sdxiovgd9623B2uPp6Q4FdZBQ6E0AFbCD9si2bYMjkoOv6uoHhy1ZFzzz1cG5WI23
         R+tHwK5fzW8urE/XVwEFWEC8jQgg4W+AQBqsJtg1YkoNsmIFwXlLOSPlFN6xI6TNdcS0
         aNjpy6M+ik+T2e8iHrTuxD1o9YNUXv8kKBKSLJk3sqFemMy5YERC7nMIPBYGe1LnUWCk
         uRvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CBhmc9w6;
       spf=pass (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=khazhy@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PjoHPapvdmywrXqIVGVLlKqd0zXSL53qENSV8hoD6zw=;
        b=Oor87r0jVrhbtY5LZKXV4BK7uyME0H5fc+Ad0VYDUhNov1lqS71DUiATl+7ngor1Jp
         Fu9UCwueKA7FDxN66+4WhInvysluWJlbPaotc+gaHmVo0t3GVXoabR6lDgRK0plxwjro
         i2PZcRm3k3CUIUSCwgmfUQL/Cbqbd6x5Gyvi8yeWCIku7pwbDQJGKME5aTFh9FFgShq3
         xwWnokb/1PG8DsEee2aC55RNNjMU2q+IE5O+4Xvyn2sRVCCFkaDWTu4bOJ28Z2dDdB5J
         cP+R85tZtdLInUOuHf9MJgeGhXokFWlVhGqCHRxEvYRCiQP2Cc9Yynf2bS3vGSseUA3o
         SPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PjoHPapvdmywrXqIVGVLlKqd0zXSL53qENSV8hoD6zw=;
        b=Wv9srQIyub9zZyUCeR3rf0Pyfi2q1pXQl0GOa2q87/g1xTmwlLdreX2M+iHoStXZg8
         ORrRoAIveHHDflxzZXqocuWcCBESJbfSFLq0O5/nHcEjEIJR6AH3zdHwSth1V2MoAwH/
         2LgFabw1JnTnA/tj/n+UDAvg0W0ogiuByeIhAOlNIfzwKDgLFvivrwAPKL5xzxz7E71C
         X16b0XgMPQFxYq7MYajSms6yln5bJPY58Oc8rWrgyNMLsup4Kliwqy+iZt6Ypdoqkizy
         og0BfC8DUWUPfqy/FxLblmqgW5AZzS86ZKWprMUQLRoyyM/ki7bQDdJUFl9UDZ31RrFt
         ajFg==
X-Gm-Message-State: APjAAAW/fWO/IoKFFIOssXQrWMcgPz8ss0g8ER6FmgvT/RIn9fUTJGip
	TOJHiJG49DPupDPS1VCNiCc=
X-Google-Smtp-Source: APXvYqwV4fVaL7+IEqRAlHRFYQSjw1JWRLd1CWWzdELYY9P15OT19IO+iepy3LxXv/Ephn5LfYu8yQ==
X-Received: by 2002:a37:a70b:: with SMTP id q11mr71973308qke.393.1578080432631;
        Fri, 03 Jan 2020 11:40:32 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:7d7:: with SMTP id 23ls6115675qkb.13.gmail; Fri, 03
 Jan 2020 11:40:32 -0800 (PST)
X-Received: by 2002:a37:4b93:: with SMTP id y141mr75371457qka.205.1578080432177;
        Fri, 03 Jan 2020 11:40:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578080432; cv=none;
        d=google.com; s=arc-20160816;
        b=kAfIyAuEYRkc5NtDraMjZir1E003AJ7Vyo/7HQP9OA5Es0prMqYUNknka0Zup5Ssj0
         hPNi0sao+rRhhWaHjiDP+1k3lEZpu+yeTwlKEuZ1gLjcRkT6VHOZ62knVB/FRJ5tGBsd
         jLKBBWZuY9d8gHzbciClJpXqrjwlaFPraveZZWz/3Qcn/xPBlHye6chqQjN6ulXieKs/
         Sf5XORDFqh2dyRxCxW7CSv0OKnLMzOvCBDyDrJxMBXQH3R5Yau9Zd8QyreEHqGktCfPy
         bClG560n9NFKb88Ps8ZXXy9TU2qIiSGz+LZpHkeNZLBYc+WJlGO3BUhXlWkA+9yrjEU1
         EjEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5LQq8SZk3mAc5rXw/xH/H6mfcKZ7LKQsRgyfTzV4yMk=;
        b=X8yj+8x/yRYsayoYxZJmvp3DH/8RSLXhH2BBN817o1IisLGAUUiw7bMRWRFX4ZUsxM
         6i13b9Fj6cygRYLqlovtycx1MqHpWlX08jvKlRZ5EBDSZCzfibnLnzLii/I9VaeIiVVf
         RAXG2nONjIS/AX/oArXnwOyNVRDvRdV1jFZNgMURAbCec0mI/cBQJeDel/9xST3RkSz5
         bvCDsIgiGaN4OEGP2b73UkHEH6LHmJPz2h0THcOMNK87X0xUxoUi6xnYTjkPr1eQb9B6
         PBq7OvDeMkDb/VnOW+TZvd5vasUAz4+vRKTXVdif+S1O62BL4+dmGjBzIW6ThfIwXLQB
         UAAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CBhmc9w6;
       spf=pass (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=khazhy@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id h17si2149810qtm.0.2020.01.03.11.40.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2020 11:40:32 -0800 (PST)
Received-SPF: pass (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id w47so37650492qtk.4
        for <open-iscsi@googlegroups.com>; Fri, 03 Jan 2020 11:40:32 -0800 (PST)
X-Received: by 2002:ac8:47d3:: with SMTP id d19mr64381426qtr.142.1578080431540;
 Fri, 03 Jan 2020 11:40:31 -0800 (PST)
MIME-Version: 1.0
References: <20191226204746.2197233-1-krisman@collabora.com>
 <CACGdZYJ3hasgRV4MKpizX3rSQ1Tq4R+wDREcYXFUgx720ac5sg@mail.gmail.com>
 <85ftgx7mlr.fsf@collabora.com> <CACGdZYJKF85SgOt0-yHiROsqhP0K+x+XAg7CRJv_0oKt60VtvA@mail.gmail.com>
 <85r20g2vfw.fsf_-_@collabora.com>
In-Reply-To: <85r20g2vfw.fsf_-_@collabora.com>
From: "'Khazhismel Kumykov' via open-iscsi" <open-iscsi@googlegroups.com>
Date: Fri, 3 Jan 2020 14:40:19 -0500
Message-ID: <CACGdZYKsGk-kD7aO=bCSUzsFkX12xPkB3D2XDYGgDE4gD+1cmA@mail.gmail.com>
Subject: Re: [PATCH v4] iscsi: Perform connection failure entirely in kernel space
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, Chris Leech <cleech@redhat.com>, jejb@linux.ibm.com, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, 
	"'Khazhismel Kumykov' via open-iscsi" <open-iscsi@googlegroups.com>, linux-scsi@vger.kernel.org, 
	Bharath Ravi <rbharath@google.com>, kernel@collabora.com, 
	Mike Christie <mchristi@redhat.com>, Bart Van Assche <bvanassche@acm.org>, 
	Dave Clausen <dclausen@google.com>, Nick Black <nlb@google.com>, 
	Vaibhav Nagarnaik <vnagarnaik@google.com>, Anatol Pomazau <anatol@google.com>, 
	Tahsin Erdogan <tahsin@google.com>, Frank Mayhar <fmayhar@google.com>, Junho Ryu <jayr@google.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000009599c5059b417b58"
X-Original-Sender: khazhy@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CBhmc9w6;       spf=pass
 (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::841 as
 permitted sender) smtp.mailfrom=khazhy@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Khazhismel Kumykov <khazhy@google.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--0000000000009599c5059b417b58
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 3, 2020 at 2:26 PM Gabriel Krisman Bertazi
<krisman@collabora.com> wrote:
> Please consider the v4 below with the lock added.
>
Reviewed-by: Khazhismel Kumykov <khazhy@google.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CACGdZYKsGk-kD7aO%3DbCSUzsFkX12xPkB3D2XDYGgDE4gD%2B1cmA%40mail.gmail.com.

--0000000000009599c5059b417b58
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIS5wYJKoZIhvcNAQcCoIIS2DCCEtQCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ghBNMIIEXDCCA0SgAwIBAgIOSBtqDm4P/739RPqw/wcwDQYJKoZIhvcNAQELBQAwZDELMAkGA1UE
BhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExOjA4BgNVBAMTMUdsb2JhbFNpZ24gUGVy
c29uYWxTaWduIFBhcnRuZXJzIENBIC0gU0hBMjU2IC0gRzIwHhcNMTYwNjE1MDAwMDAwWhcNMjEw
NjE1MDAwMDAwWjBMMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEiMCAG
A1UEAxMZR2xvYmFsU2lnbiBIViBTL01JTUUgQ0EgMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
AQoCggEBALR23lKtjlZW/17kthzYcMHHKFgywfc4vLIjfq42NmMWbXkNUabIgS8KX4PnIFsTlD6F
GO2fqnsTygvYPFBSMX4OCFtJXoikP2CQlEvO7WooyE94tqmqD+w0YtyP2IB5j4KvOIeNv1Gbnnes
BIUWLFxs1ERvYDhmk+OrvW7Vd8ZfpRJj71Rb+QQsUpkyTySaqALXnyztTDp1L5d1bABJN/bJbEU3
Hf5FLrANmognIu+Npty6GrA6p3yKELzTsilOFmYNWg7L838NS2JbFOndl+ce89gM36CW7vyhszi6
6LqqzJL8MsmkP53GGhf11YMP9EkmawYouMDP/PwQYhIiUO0CAwEAAaOCASIwggEeMA4GA1UdDwEB
/wQEAwIBBjAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwEgYDVR0TAQH/BAgwBgEB/wIB
ADAdBgNVHQ4EFgQUyzgSsMeZwHiSjLMhleb0JmLA4D8wHwYDVR0jBBgwFoAUJiSSix/TRK+xsBtt
r+500ox4AAMwSwYDVR0fBEQwQjBAoD6gPIY6aHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9ncy9n
c3BlcnNvbmFsc2lnbnB0bnJzc2hhMmcyLmNybDBMBgNVHSAERTBDMEEGCSsGAQQBoDIBKDA0MDIG
CCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzANBgkqhkiG
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
BQUHMAKGNGh0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dzaHZzbWltZWNhMS5j
cnQwHQYDVR0OBBYEFJ2Vb0jiXUWlD5ibz23a558NzWOgMB8GA1UdIwQYMBaAFMs4ErDHmcB4koyz
IZXm9CZiwOA/MEwGA1UdIARFMEMwQQYJKwYBBAGgMgEoMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8v
d3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMDsGA1UdHwQ0MDIwMKAuoCyGKmh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NodnNtaW1lY2ExLmNybDAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0l
BBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMA0GCSqGSIb3DQEBCwUAA4IBAQCk2Fht/QkHdD9YQlQ/
/BoVlZzl+wg2oB8mPQEGNN49NfSL/ERAGoituF3/Zv+xv6owWk2Xp+sTA69OuAt2wZ4O0pXm2NNb
yE0QS1h/jH61IgJY4dU65qPcUYmkEdBDRX3XzR1wmnDc3yelHxlYerMuJFmSM5g4dIjbdpOlHTGh
jnWrjPPoGaT9nEbPfTxkahJTybnCIMuQbt8nl2QdV64GhBMCQWbIW1xY6Uv0FZcadQhF1vzhd/OH
qGkK98y1Dz/54GBO4A8jOSeDFuh+l2iygTcH16xKfB0XvhoUGdrru24FTEY7p4VTKkw+eJbUvdod
PlESVftk7+JISQWxBEYKMYICXjCCAloCAQEwXDBMMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xv
YmFsU2lnbiBudi1zYTEiMCAGA1UEAxMZR2xvYmFsU2lnbiBIViBTL01JTUUgQ0EgMQIMROfpbOE2
LmBNcT9PMA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCCzW16PagtP/M86wH5eKTlB
ylOhxm/zo3u5uC/UWbcAljAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEP
Fw0yMDAxMDMxOTQwMzJaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsGCSqGSIb3DQEBBzALBglg
hkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAHU/dnGvnEVngQwMPSIneiuQKi3zMo6v18FoUjzcH
XOjJ4hSah8+C7CUj4hQzRrycafRmAvVDtlMkGsmlRk++gskfxe0HYax1sVdZXnk3zV9paG4zWCi0
FmLiClsHMFfFrPqqlzoGSm7yqSHLYVMiRoEQ0V1rwa2ofnwAI3asgD8u+RyGWWPNJbymWPh7TV0x
yPFGwiUzWYmLMpGfq8kU+0pGhNrWikyPLuxgOP0vh1PF7pe1nVrihMujMB+uDcTPKcyZ5wqY0RBB
uhiBo2NYZX5d29ULHGg4Anyvpv4eAt6ypYadAqYYds9y56iVzeddbIBzWRYptlbluXj+bSoNlQ==
--0000000000009599c5059b417b58--
