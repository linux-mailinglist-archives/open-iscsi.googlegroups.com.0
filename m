Return-Path: <open-iscsi+bncBD54HHNYIIIKZT7W7QCRUBENLS3FS@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F06B2A1928
	for <lists+open-iscsi@lfdr.de>; Sat, 31 Oct 2020 19:06:37 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id h11sf1289757wrq.20
        for <lists+open-iscsi@lfdr.de>; Sat, 31 Oct 2020 11:06:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1604167597; cv=pass;
        d=google.com; s=arc-20160816;
        b=vaKzO+J6psxTUHOM887GaQt0iWN3J6OJn9Ny1hzSc2u1pgi4NKuB56BWP90xDg30YV
         Dqrk9WXzMLTf1zLXkvq0AKvSMEeXj0e8QRb4Fk8NrmIOVqzaUy07hdRTtDpz6k9zX8PR
         cNCrfTcgqtAKCUdYemrK/XwV7+f2jyiPvTg5mUmeym4RE97KqsdkxmP/P2eYPPrTzzID
         bhWWN/oC5Cb+4r87GB5jvz+T2BpzaaIbzH1YrFM4XGpKngbI8zmVig4kQKooVv1Xzf3w
         l98MQF9GNYGH1n3VN4r0yWcdfobh4AsQtb+rDuPGvyk5GGqkChh1jLFyzsuVnBJFeCF6
         oPcA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:autocrypt
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=y72qRYLmnVtXhJZ2TTbPmNdSfspCC1iAwjqRFhePKCk=;
        b=m2G8V1zye4Rl2GCLWdQ3lWOXYusfkf8psyMVM7KLc9txMs9aK+psbrlEdyZRVAfpFM
         mo+KBhFOMj/D3mVj/IYGnI7hQeQJxGLLp3hL0bEnQ3JsVasAURtK6/q1VLQFkW+hUV8l
         Vj7MjZ9C3ZqJtnVpa1PAluw6KkECWJw3Sf94WiAtJstVGIuL0t6rlu/k2JZhGnhDS1mt
         M4z0+cC7t/ATKF6ctQkchh9J4IOunhYyJ8bUjuayoCHzdGAMnOj34/zCxNMrGR3w7HBw
         N0et2tpIR/U3cXFnWP7wQ+BhwzLevdCEl5DfEu6DfNT8G8QkdmVdwzMH3i/Z1376GIjZ
         epwA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=H+vLsaxm;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y72qRYLmnVtXhJZ2TTbPmNdSfspCC1iAwjqRFhePKCk=;
        b=WYp6Mld/kYpBadoieIzxdnufj9pLsDyzCry7X0viUo271On7n3AAvG2mxiX18dfYqq
         w9L8HQbzGQDCgvrW5ARDrL6Bv9tZJ1Cz6RyG47ZjSPDBHg5b2wKzoOo+qR/JPoG9N9mR
         Z+4g7aPGCXA/hj79CsW2ok3HaDJ6tRkdjL+2pRxUOV8pTkuTclxyvAaLqpI8OIi+cCLC
         li+992BS1DTyFouxdEnFd2ECNuPd4L+yeMUYLivkMnHMwm3fSFmo3EY615HNiFRUA0Ms
         VK83JH1sxO+CVk5HEFEDBCEnpHfqDHs015StC2+Dmjwni8CZUu7g4OfpTv6NdshfNdDU
         1mrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:in-reply-to:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y72qRYLmnVtXhJZ2TTbPmNdSfspCC1iAwjqRFhePKCk=;
        b=r3tsos8SFSC1fdM+zepQqVVtU4k8czVFPca8gGVFZcdRIeC6/bmNn7jKfuIMu0e9aZ
         T9/UgxtzlbhHDyJPrxqB0NzZd3tfYxB4ZkFZ5d+lwZweb2bY9jMIM72hUOoba3RVRMaF
         8AYAV+qtmof0lROFQIJTaPWWsaIr/b1SFdchZMAl/hYXjlSOx0AanYh8OwJqBVnphYAx
         D8CoMdYv9CMfdRP+V4gUGcBT0f+EFPeSjaipJRQBXtJuGTU2Hl0JkP2HkV72f++X6BcV
         TSDNyDqXIcn132qlbFqW0hc0s05fVNHOxqabLFfLuovoSKUJKBOS+uVEFGnsgi/6VGOo
         ZleQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533Shlm2w8sw+bGj2N1/rNrhIjz0KCiHwLJrCo03mOIJ8rfcoFE7
	2LhqVIt+f/vQM6uId2Y2+ko=
X-Google-Smtp-Source: ABdhPJzIbx2am+PErssgnGJfgY+APOsM5DNJukO5I3wZZIXAIgBTg8FlC+WD0tLkHAm+ozlKJspLHQ==
X-Received: by 2002:a1c:ed15:: with SMTP id l21mr9620462wmh.26.1604167596946;
        Sat, 31 Oct 2020 11:06:36 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:a544:: with SMTP id j4ls2451356wrb.3.gmail; Sat, 31 Oct
 2020 11:06:35 -0700 (PDT)
X-Received: by 2002:adf:f289:: with SMTP id k9mr11269544wro.0.1604167595826;
        Sat, 31 Oct 2020 11:06:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604167595; cv=pass;
        d=google.com; s=arc-20160816;
        b=M/CnoemAn6AYeOgwOSIh7s+5v32TqIJpLj2RH4Q9rV9sr7msAt+QoCkklr8Ma9VU/q
         OdOvPpEWApkHmpYBWCklaUVGfUejBt3Zb/lA7Gndcy2+q3J0AgcUbD7eFjl1hfpt36Yx
         o7L6Uko7veUKZWmiDj218Erm97succJa3of4alPfN3TlnsG7re+AmYZ7YtieHLLN5v1e
         WwWzNUThZrH/hS8LvctLTdVtEgGbrEChjUD+3bf6gxsfMAcW0Bn/8zaKwsdHB8VwOtdJ
         WIABlkrOvhpJyNnFpWcM58YUkd7gREw30mpfRDG2yTBj0HTae7sn1ZS2A5C2eaLMy8Vf
         4aWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=PWx0pszRS3UizZ7n5ooVwdJ3LzrKVvpsCY3D2E2JRh0=;
        b=EqBIZE5gXNwHkYxK2fPh4thfNcNNHuFwITFOGoZK/33VPJ3WEnDjsqB346Y8m0aZkb
         pVxB4RJS4q0Dj0mONCEhjYF4rSZutZgE7WwvzALQtrvDExqm/LQN2xNkXGsR+AUT2D87
         Zsp1koP8D3PiTsmfRXxPAIJf4CEn1WzFPobXbcvAkOKlWvTFnGYdjZmaW2ITQ1rcMGUV
         JENdpdmxGAzu6sdCcJt0xaMYY+/ik7Zr0LiTVeV2paUv7J1jUH/b8TfMAj+OrektBo3D
         Ie6qwhEFzhM7Alk6Z6FwSMwlBCyV/avivAaUtarRVe+Bub6UAEJx6A7RrLiaf4VSKgCc
         Jedw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=H+vLsaxm;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [51.163.158.102])
        by gmr-mx.google.com with ESMTPS id f131si160672wme.1.2020.10.31.11.06.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 11:06:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) client-ip=51.163.158.102;
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2053.outbound.protection.outlook.com [104.47.8.53]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-13-MzTxrh-ZNK6RU5nLZmk12A-1; Sat, 31 Oct 2020 19:06:34 +0100
X-MC-Unique: MzTxrh-ZNK6RU5nLZmk12A-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akEqvDasVszyiNshIibUKPA680a8Jniv6zJu4i33LS6v6JOMTk6htEpcXO5bxT7hN+NAydAEgzm6Zacpqq6WRgHCwW4H7FQx1vBdlFolBbfcTJ7G29wGRVYU9/MayfSqCSrwr7aS/45K7gggIyh1bUR/HvdGnC3ILnO7nKrVnawXDfsEnLiXEjCDW2Z5vo3VukUiQexFbXQNnnuogiQZWtsPMYhdtN+D/IZSCoZq8xaVpZH/0VMXna2pUCBx1r3MAfDcbp7L/ouV0bUaKeN+YXsVGm/RIiF5LDprqFt/zID5KiPzFe9X2t5w3vHKyiITOkb9aGQpZrzQLb1pv06Srg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWx0pszRS3UizZ7n5ooVwdJ3LzrKVvpsCY3D2E2JRh0=;
 b=l5NnGfCAWuAbiWZHakBfX42s/rodwYXSq81ErvrtPjSAslvf9I7eA7mQ3a8k9rijBDeC3eP/RPsAYExJZDljPvp93oOOfT4JJEc9NFBnRRfYLImiLM6yy2ENzbO/vPGWp4XTt4QexWxccesRIdTBopl+7Rc7aAhNRppdjykesnWgAJpe3eLBX7vKDHcZIETnddehImCfPONRI5v43tQiDZZkbTMDUb2xnwx0pc0rasg35cWqDlJggqWh7ozLxLTVwyegaACWm/A9s5uAOwoYWV5SyCpLrXNZoGgEzDetyafDcITrDVoSY0cjN/p59lNsQGzGTmo+R4oEkTBrY1V3NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AS8PR04MB7926.eurprd04.prod.outlook.com (2603:10a6:20b:2ab::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Sat, 31 Oct
 2020 18:06:32 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952%7]) with mapi id 15.20.3499.028; Sat, 31 Oct 2020
 18:06:32 +0000
Subject: Re: [PATCH] scsi: libiscsi: Fix cmds hung when sd_shutdown
To: Wu Bo <wubo40@huawei.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com
Cc: cleech@redhat.com, jejb@linux.ibm.com, lutianxiong@huawei.com,
 linfeilong@huawei.com, liuzhiqiang26@huawei.com
References: <1604132622-497115-1-git-send-email-wubo40@huawei.com>
From: Lee Duncan <lduncan@suse.com>
Autocrypt: addr=lduncan@suse.com; keydata=
 xsFNBE6ockoBEADMQ+ZJI8khyuc2jMfgf4RmARpBkZrcHSs1xTKVVBUbpFooDEVi49D/bz0G
 XngCDUzLt1g7QwHkMl5hDe6h6zPcACkUf0vy3AkpbidveIbIUKhb29tnsuiAcvzmrE4Q5CcQ
 JCSFAUnBPliKauX+r0oHjJE02ifuims1nBQ9CK8sWGHqkkwH2vUW2GSX2Q8zGMemwEJdhclS
 3VOYZa+Cdm+hRxUxcEo4QigWM1IlgUqjhQp6ZXTYuNECHZTrL9NUbslW5Rbmc3m0ABrJcaAo
 LgG13TnT6HCreN/PO8VbSFdFU+3MX1GqZUHfPBA4UvGvcI8QgdYyCtyYF9PQ02Lr0kK0FwBD
 cm416qSMCsk0kaFPeL99Afg8ElXsA9bGW6ImJQap/L1uoWZTNL5q9KKO5As9rq6RHGlb2FFz
 9IPggMhBYsSVZNmLsvgGXvZToUCW58IMELG/X5ssI8Kr65KxKVNOT5gXGmTyV3sqomsRVVHm
 wA3RBwjnx7tM7QsV+7UboF3MOcMjBOCIDiw95dBVSM6+leThXC5dc4/17Idw912mnlo1CsxO
 uQSJddzWeD0A2hbL8EcRQN/z9YD0IwEgeNa2t1nQ6nGjbDZ5TiG6Mqxk+rdYJ5StA+b/TExl
 nZ29y2s6etx9wbTUBSA1aFiEPDN5U77CrjiM0H4y7eKldLezPwARAQABzSRMZWUgRHVuY2Fu
 IDxsZWVtYW4uZHVuY2FuQGdtYWlsLmNvbT7CwYEEEwECACsCGy8FCRLP94AGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheABQJOqHy+AhkBAAoJEMU8XTeNhnafp4YQAMgE1owepFfSgebbT3fj
 0/S83KvYloj2Fv/OiQKgjnEamy7k2n3XBl0+XYHe/0ZlKAYN8oCnlpr+PTh5iT79rq99CkZa
 1OENVypbnVGjeZQpNivmXtkKYATwVhqyWsWItJyQ7fqciDkPlCekjURhEMRliE8OcrpvXOxq
 w1apxuL6phkQxY0fQGSQzz9sXZcMIx4ZhotQRwGLr5FIpqIhToIlVhvkooL7NsDG0FlagV5f
 +Jr412zvk7f3rPKrLR8Bp1qTe/HLeEyhT38CWECiTM8+VAGFQ4+5HRg6F4322T8VynMX/zyp
 LUVHIymbmzyXXMj6xJsbrcN8UJsPglQ+fHmb5ojKsy+S92KgAgpnq4mmz63eCzZrKZ7B5AqB
 qMhZ0V8wjv0LzHdQbHH72ikM/IWkAvPfVYsvm08mxUdFMmwFXpjIZJeJJyxS6Glxcxt98usO
 cdrBBJE57Q77GQC69gbPJu2vmH7quAKp59PxMxqZPDMfn2nt/Qnxem3SYL3377rl3UAlZmbK
 2kKAOY3gngHfptoYtlJJ69bnoTIOXPNfE5jPkLrt3LbOQyfvrSKSTUOet26fWD9cME/tXtvC
 48hsyheShX3obqBVZO6UnW5J+f6DVLuHv1huDUEwQMvHyejpomfnOFpGX8LkaS26Btvm94h2
 szYB8xYSw5VfH3DKzsFNBE6ockoBEADAo38n1dd3etQL/i07qPVoqGSWmaMZqS6DSFAPfqLe
 RVRTQZRBltdHNlV4BcDhRHDQJCuhuKqhTe8TkM2wpFFOVyNYkXm4V5mEmUtQ8PDa76FfY2nn
 6cV4DIN/oCqt0SnWbi18LLd9x7knApsD+y1MnVYmQxw1x91GvHFJD4L4NwHNZJUO4YkIwhl/
 AMcDP0WYJRwR8vt657gEtfkZnD9N3Vb+gLk820VGMPpbDNqedqPxNEjMyNSn2AwBTJ5bxvCM
 +6eJA/F6/hIyvoAmb8oAXBpW6+GZQEi3D2xOmzQmgoMstLuxIzeK0gBg4lFg0dMsX6fq+CxW
 QtKR46HFs3R6xtLZkYOg0ZNlnSlJUOE0BiRgEOP0hJhSYFqnHuXvIxnTAr8gh0883KMI64nA
 sCOcUaO/SeRkGRvzg+Oh0Nnr2DG/U3TMygDlkr/MXZQDGi3H3760/HD3ipQjs28nLHtiqJNr
 5wwJwMv1iWcw9tuzNLt/5mmI5+veDJRObGCqQM43A2FMUx+zVZfVLVyVihnQ08eGdVTAsuSl
 FzyPaaIQUaPn224wRtnbDTTWg9HTR3R6Qxi0ayWeTVZV3va2lCXWrUecJpzvUFLyH3ViM2Iw
 LboM03qutGcjINkb4KuqqW6EHm3MkOC69TWgIFa4W2rpy1FPkDvXNf9nlqcgoNo0fQARAQAB
 wsOEBBgBAgAPBQJOqHJKAhsuBQkSz/eAAikJEMU8XTeNhnafwV0gBBkBAgAGBQJOqHJKAAoJ
 EF8LJ744L6KVhr4QAKGjq1s8WBup2uWOevIcncyAaKYaGX3gQj4Qf+lfklvPpnwUfPMbcYMU
 DhTo4H1lw1dDSBic65OsqMjz2pxJ+AYtLxrONKKCUQRyfO1mwB4etIv7ZF+E5HsclwqM/GWt
 Y9QijHgRbDiUK1h3Y2sQGc/MKg8m7EImZOGEEMQQj1tJ5r3ksH2e6KwO+K9y/uf+qLHd6lSb
 G2+niSSUhcA46PdW2tzx40dZp6d2aEl53f2jwsQbrog1BsGuxOA9+26xhF4p0Ag/hfOX9/n/
 mMzw+bXSFB/gJE0zQ83jksuHFCSJDHEsPzmKi4hVRKuEcEAryjGXH4bqoDkz/p3DRdIfnuKi
 Li/iwSsK76UgGekw6tjjP8ggz6UC8UVhdMv9q4hcewv5/omdnuHj/G6uSGlVcAi+5VJ88yEH
 5Am1IYbjSbqzSDQazEK3oAE6qXwzQXjq1iuqR9Xa6eXtcog+CHFSKU3aEuL+f8oUUzpEU+Xq
 ZSPuHpFgYHsNTkxUA8fuP6Tr53kqHD9PEqLb8+M1MlJBjiD+JSHIN5+C6LpZIZ0Zbp7qInu8
 Pu1eALxri4VgevZKQOQXTJUsNFWh4EYdsfNgcCbQoP8gFFns9YmQ0vXHnJG/dPjzBPAUfKZg
 PtVofEMK1B4J9gAm1fO3hqRxrtSkUZgopZpjHtC7ZuYSkwmEUoMjxpwP/j2ql5J6t06uIhUz
 OgHAEJ9+4ppeAPNQAUsRVrPk3m1PaV1xs7nx/D4yXbq+S0/iMA+g1k0Ovh3TSvdQfK/74Rp0
 48Tr+0Tm2uAESaN4+7WK0v8rONVPuqpSKf92o5KmFtlT+Yyz9ZRu52GE7BzkktMEnGp1sLBM
 zbwflhj/ZtMPOdQxmpBZS5h34alcBiYK3wVVZpzRNLhke3z8ZAn0e2xG8fOX56LiL7o1w8wF
 SA7PMuuhklq3NY/xTwBOpT8YiQU6VlELQQTR06unnHa6we3JcsNlTH2//7mZ0QVp9nPW6MEw
 FUvbjJliGQbs4e8z6vL8M7bgl1kgcTViSW4jL41CXnGlLSUm8pqvbQ95/gJhgs6PVBwH5FF8
 JGCvUKOeAFsICUPEFizy4BgQpPPYE++I07VqZ87/gaeN9EeFgZASolQwcZNRAWplDD4jIpj8
 u7wo+4j22HyVXuoQTg8+p5TVMV1Y0b2X4tJm98ways9e5LTQLXM6dcoGKeVF3Pt53RVBiv2n
 7WpDcR/bT0ADCwtg8piRWMtA8Boc8w5WG06vphxLlDIe/hDMkNlgCUy84gLiRI76VaBh9eFp
 v8Bn4aZBVOiuzj4s2DSAp4G3loUsTuj4uxGgDlfhK1xdJhBvKdO8omG+A73DZ7aKxLPaXd8p
 +B+giaT8a1b5hWuz85V0zsFNBE6ockoBEADAo38n1dd3etQL/i07qPVoqGSWmaMZqS6DSFAP
 fqLeRVRTQZRBltdHNlV4BcDhRHDQJCuhuKqhTe8TkM2wpFFOVyNYkXm4V5mEmUtQ8PDa76Ff
 Y2nn6cV4DIN/oCqt0SnWbi18LLd9x7knApsD+y1MnVYmQxw1x91GvHFJD4L4NwHNZJUO4YkI
 whl/AMcDP0WYJRwR8vt657gEtfkZnD9N3Vb+gLk820VGMPpbDNqedqPxNEjMyNSn2AwBTJ5b
 xvCM+6eJA/F6/hIyvoAmb8oAXBpW6+GZQEi3D2xOmzQmgoMstLuxIzeK0gBg4lFg0dMsX6fq
 +CxWQtKR46HFs3R6xtLZkYOg0ZNlnSlJUOE0BiRgEOP0hJhSYFqnHuXvIxnTAr8gh0883KMI
 64nAsCOcUaO/SeRkGRvzg+Oh0Nnr2DG/U3TMygDlkr/MXZQDGi3H3760/HD3ipQjs28nLHti
 qJNr5wwJwMv1iWcw9tuzNLt/5mmI5+veDJRObGCqQM43A2FMUx+zVZfVLVyVihnQ08eGdVTA
 suSlFzyPaaIQUaPn224wRtnbDTTWg9HTR3R6Qxi0ayWeTVZV3va2lCXWrUecJpzvUFLyH3Vi
 M2IwLboM03qutGcjINkb4KuqqW6EHm3MkOC69TWgIFa4W2rpy1FPkDvXNf9nlqcgoNo0fQAR
 AQABwsOEBBgBAgAPBQJOqHJKAhsuBQkSz/eAAikJEMU8XTeNhnafwV0gBBkBAgAGBQJOqHJK
 AAoJEF8LJ744L6KVhr4QAKGjq1s8WBup2uWOevIcncyAaKYaGX3gQj4Qf+lfklvPpnwUfPMb
 cYMUDhTo4H1lw1dDSBic65OsqMjz2pxJ+AYtLxrONKKCUQRyfO1mwB4etIv7ZF+E5HsclwqM
 /GWtY9QijHgRbDiUK1h3Y2sQGc/MKg8m7EImZOGEEMQQj1tJ5r3ksH2e6KwO+K9y/uf+qLHd
 6lSbG2+niSSUhcA46PdW2tzx40dZp6d2aEl53f2jwsQbrog1BsGuxOA9+26xhF4p0Ag/hfOX
 9/n/mMzw+bXSFB/gJE0zQ83jksuHFCSJDHEsPzmKi4hVRKuEcEAryjGXH4bqoDkz/p3DRdIf
 nuKiLi/iwSsK76UgGekw6tjjP8ggz6UC8UVhdMv9q4hcewv5/omdnuHj/G6uSGlVcAi+5VJ8
 8yEH5Am1IYbjSbqzSDQazEK3oAE6qXwzQXjq1iuqR9Xa6eXtcog+CHFSKU3aEuL+f8oUUzpE
 U+XqZSPuHpFgYHsNTkxUA8fuP6Tr53kqHD9PEqLb8+M1MlJBjiD+JSHIN5+C6LpZIZ0Zbp7q
 Inu8Pu1eALxri4VgevZKQOQXTJUsNFWh4EYdsfNgcCbQoP8gFFns9YmQ0vXHnJG/dPjzBPAU
 fKZgPtVofEMK1B4J9gAm1fO3hqRxrtSkUZgopZpjHtC7ZuYSkwmEUoMjxpwP/j2ql5J6t06u
 IhUzOgHAEJ9+4ppeAPNQAUsRVrPk3m1PaV1xs7nx/D4yXbq+S0/iMA+g1k0Ovh3TSvdQfK/7
 4Rp048Tr+0Tm2uAESaN4+7WK0v8rONVPuqpSKf92o5KmFtlT+Yyz9ZRu52GE7BzkktMEnGp1
 sLBMzbwflhj/ZtMPOdQxmpBZS5h34alcBiYK3wVVZpzRNLhke3z8ZAn0e2xG8fOX56LiL7o1
 w8wFSA7PMuuhklq3NY/xTwBOpT8YiQU6VlELQQTR06unnHa6we3JcsNlTH2//7mZ0QVp9nPW
 6MEwFUvbjJliGQbs4e8z6vL8M7bgl1kgcTViSW4jL41CXnGlLSUm8pqvbQ95/gJhgs6PVBwH
 5FF8JGCvUKOeAFsICUPEFizy4BgQpPPYE++I07VqZ87/gaeN9EeFgZASolQwcZNRAWplDD4j
 Ipj8u7wo+4j22HyVXuoQTg8+p5TVMV1Y0b2X4tJm98ways9e5LTQLXM6dcoGKeVF3Pt53RVB
 iv2n7WpDcR/bT0ADCwtg8piRWMtA8Boc8w5WG06vphxLlDIe/hDMkNlgCUy84gLiRI76VaBh
 9eFpv8Bn4aZBVOiuzj4s2DSAp4G3loUsTuj4uxGgDlfhK1xdJhBvKdO8omG+A73DZ7aKxLPa
 Xd8p+B+giaT8a1b5hWuz85V0
Message-ID: <10d05ca7-717a-1592-3ecb-78e56ad99763@suse.com>
Date: Sat, 31 Oct 2020 11:06:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <1604132622-497115-1-git-send-email-wubo40@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [73.25.22.216]
X-ClientProxiedBy: AM0PR02CA0106.eurprd02.prod.outlook.com
 (2603:10a6:208:154::47) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by AM0PR02CA0106.eurprd02.prod.outlook.com (2603:10a6:208:154::47) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.22 via Frontend Transport; Sat, 31 Oct 2020 18:06:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 74f3ab67-43b4-467e-3eb4-08d87dc7b242
X-MS-TrafficTypeDiagnostic: AS8PR04MB7926:
X-Microsoft-Antispam-PRVS: <AS8PR04MB7926278DA5F8331E5DC45513DA120@AS8PR04MB7926.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 31WjCK8Y90RruXIHEsKHfekP7udqkoP+oSqvHMstqUcumZOpJEwuk1Reg6Ia8n2bn+5vXu630AFWWRBtLTX/vgYUsvjl7S3YIff7k6Hf2ltjblITPyWH1Cmtxbv9b9FiODTp12dp+JD12O3shhrX07yXvxecdTOEZbgBitlfXeerEnBTR8gwEE6s9UQAU4y3U9KKev2DRnfE2ubKYARUmtY60szgM7Bpr/R/seym7PS4bXsy/1CymrvfALTNGnJVBSQLHTNr5ozHz70oHMzlnn12zBUa9Ggnuc5btu8aFG4O9i+9gHMPC+m1r2dOzWnPYsiw/e/230SJ3JxSTwYLGTwlQOPRPl+/5QbPFnz2Uv1kBpFjdyzTlCr1f5ttAGqD
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39850400004)(396003)(136003)(376002)(346002)(16576012)(66946007)(6666004)(31696002)(8936002)(316002)(6486002)(5660300002)(66556008)(478600001)(66476007)(186003)(36756003)(2906002)(8676002)(26005)(2616005)(16526019)(956004)(53546011)(31686004)(86362001)(4326008)(83380400001)(52116002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: yUOfG9mUb8E7oLRLogSlWd7+X5Y6T4YRtq/4LM0NPjUuLyVdMfdfXODa2vmL7uX2CWFT0s+YGmZlM1kgoe54CTE7eqBo8Y+eSdBa0o14B0wuXeGYDxiP4GI1SwB3M6mYx16Sii6FdkZSLmMH3C4DSXRljs4tHCGbyWMoIvquRBvmLrdyRFKOMFsh/Qqvu86umsWiW5IZmogZ9aDgh3pHKJsOQc9KbgiLyxpzgdr6d+Bcdr/28dB/Ggl8V+zaZomVhDC/r/dk0LzFAvD7JHf7lkPUInXtvqXfgLKjs5QWyYCQ+zn4QaxBHULg9G8sWphu9VKtqD2+Oo7QLMG7suEntJ1q9ZEvMww5WBLBLGMMjXarKi2hWJyktN11jR8TGA7eHobuj+o1049kVk0ZIn41+T/kThSF99J9RubJluDf/OIawvl5gbQVbnks11jt5JfXsWmAarM0/yg4aFJwjAhDKjlwzolE9ItEZX6EwwCnmUMec9iQCNxhQ1uUaHzrYKsxuw6bdBkll1uoBYRyEwpoTZ8bvUlf/Qehs50o8O6q9zSyzvVw4CpibP9Ch+dcNaHNCJJkcN70RqNRUhsLJUhM3MZGsTVAVbZRy7mZPWcL4VVwjH9f39BUlTuHHMi7NRqsNHZUd4sFD4Ovk60MDlGnjQ==
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74f3ab67-43b4-467e-3eb4-08d87dc7b242
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2020 18:06:32.0701
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SwvYbeGr82wDMgDBOzssiqfG0T6BtdS9tsZT5rPzFcmKmB23nzQ+8Qkjp6MmBKcQMPM35faQ9ACFr6rswnZWEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7926
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=H+vLsaxm;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 51.163.158.102 as permitted sender)
 smtp.mailfrom=lduncan@suse.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
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

On 10/31/20 1:23 AM, Wu Bo wrote:
> For some reason, during reboot the system, iscsi.service failed to
> logout all sessions. kernel will hang forever on its
> sd_sync_cache() logic, after issuing the SYNCHRONIZE_CACHE cmd to all
> still existent paths.
> 
> [ 1044.098991] reboot: Mddev shutdown finished.
> [ 1044.099311] reboot: Usermodehelper disable finished.
> [ 1050.611244]  connection2:0: ping timeout of 5 secs expired, recv timeout 5, last rx 4295152378, last ping 4295153633, now 4295154944
> [ 1348.599676] Call trace:
> [ 1348.599887]  __switch_to+0xe8/0x150
> [ 1348.600113]  __schedule+0x33c/0xa08
> [ 1348.600372]  schedule+0x2c/0x88
> [ 1348.600567]  schedule_timeout+0x184/0x3a8
> [ 1348.600820]  io_schedule_timeout+0x28/0x48
> [ 1348.601089]  wait_for_common_io.constprop.2+0x168/0x258
> [ 1348.601425]  wait_for_completion_io_timeout+0x28/0x38
> [ 1348.601762]  blk_execute_rq+0x98/0xd8
> [ 1348.602006]  __scsi_execute+0xe0/0x1e8
> [ 1348.602262]  sd_sync_cache+0xd0/0x220 [sd_mod]
> [ 1348.602551]  sd_shutdown+0x6c/0xf8 [sd_mod]
> [ 1348.602826]  device_shutdown+0x13c/0x250
> [ 1348.603078]  kernel_restart_prepare+0x5c/0x68
> [ 1348.603400]  kernel_restart+0x20/0x98
> [ 1348.603683]  __se_sys_reboot+0x214/0x260
> [ 1348.603987]  __arm64_sys_reboot+0x24/0x30
> [ 1348.604300]  el0_svc_common+0x80/0x1b8
> [ 1348.604590]  el0_svc_handler+0x78/0xe0
> [ 1348.604877]  el0_svc+0x10/0x260
> 
> d754941225 (scsi: libiscsi: Allow sd_shutdown on bad transport) Once
> solved this problem. The iscsi_eh_cmd_timed_out() function add system_state
> judgment, and will return BLK_EH_DONE and mark the result as 
> DID_NO_CONNECT when system_state is not SYSTEM_RUNNING, 
> To tell upper layers that the command was handled during 
> the transport layer error handler helper.
> 
> The scsi Mid Layer timeout handler function(scsi_times_out) will be
> abort the cmd if the scsi LLD timeout handler return BLK_EH_DONE.
> if abort cmd failed, will enter scsi EH logic.
> 
> Scsi EH will do reset target logic, if reset target failed, Will
> call iscsi_eh_session_reset() function to drop the session.
> 
> The iscsi_eh_session_reset function will wait for a relogin,
> session termination from userspace, or a recovery/replacement timeout.
> But at this time, the app iscsid has exited, and the session was marked as
> ISCSI_STATE_FAILED, So the SCSI EH process will never be 
> scheduled back again.
> 
> PID: 9123   TASK: ffff80020c1b4d80  CPU: 3   COMMAND: "scsi_eh_2"
>  #0 [ffff00008632bb70] __switch_to at ffff000080088738
>  #1 [ffff00008632bb90] __schedule at ffff000080a00480
>  #2 [ffff00008632bc20] schedule at ffff000080a00b58
>  #3 [ffff00008632bc30] iscsi_eh_session_reset at ffff000000d1ab9c [libiscsi]
>  #4 [ffff00008632bcb0] iscsi_eh_recover_target at ffff000000d1d1fc [libiscsi]
>  #5 [ffff00008632bd00] scsi_try_target_reset at ffff0000806f0bac
>  #6 [ffff00008632bd30] scsi_eh_ready_devs at ffff0000806f2724
>  #7 [ffff00008632bde0] scsi_error_handler at ffff0000806f41d4
>  #8 [ffff00008632be70] kthread at ffff000080119ae0
> 
> Reported-by: Tianxiong Lu <lutianxiong@huawei.com>
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  drivers/scsi/libiscsi.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 1e9c317..2570768 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -2380,7 +2380,17 @@ int iscsi_eh_session_reset(struct scsi_cmnd *sc)
>  
>  	mutex_lock(&session->eh_mutex);
>  	spin_lock_bh(&session->frwd_lock);
> -	if (session->state == ISCSI_STATE_TERMINATE) {
> +
> +	/*
> +	 * During shutdown, if session is prematurely disconnected
> +	 * recovery won't happen and there will be hung cmds.
> +	 * To solve this case, all cmds would be enter scsi EH.
> +	 * But the EH path will wait for wait_event_interruptible() completed,
> +	 * when the session state machine is not ISCSI_STATE_TERMINATE,
> +	 * ISCSI_STATE_LOGGED_IN and ISCSI_STATE_RECOVERY_FAILED.
> +	 */
> +	if (session->state == ISCSI_STATE_TERMINATE ||
> +		unlikely(system_state != SYSTEM_RUNNING)) {
>  failed:
>  		ISCSI_DBG_EH(session,
>  			     "failing session reset: Could not log back into "
> 

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/10d05ca7-717a-1592-3ecb-78e56ad99763%40suse.com.
