Return-Path: <open-iscsi+bncBD54HHNYIIIK5JN254CRUBC6UJ3QC@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E69A5117436
	for <lists+open-iscsi@lfdr.de>; Mon,  9 Dec 2019 19:30:07 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id u15sf2237940vsg.0
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Dec 2019 10:30:07 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1575916206; cv=pass;
        d=google.com; s=arc-20160816;
        b=sR1OIpH7HpVJ1qaA15Vculpvfoe+aK/2O9H8MqIQ1PCHIL9d/9YLukE7yh3A3UWQUU
         NjeT2uH//Ubj+06SbZUgkQj1fnzR77VLzBVvDx7Yblpu6FH07frguR9movW1/10CoFKd
         +RSQ7SUkF83TJOagJZl+7LNtcpSyGwtaiQaLcJw9ztfiB56IKeBJ4U+UH0O5v97dqECu
         mTndVsLLiGUG2SmLB0AL+FCDolAXzh41AZo8iXWUqYoQRmL9ztRSzvpQItXL5gdGKDvp
         8FMkC0zfdQpb4o2bVIEC9cYFT39xX/08XmDVdtZV0yk5J5m9bV97P98Bow89wdJ5rL2t
         jdjw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=vSWpmNIlr+ABgUHiBd+C2hYcvp9VVEpDtTIJOVnW1a8=;
        b=0FenxCIEZKGAyTZdKUQ2j7/lxlOH6w1x+XomhkHgYFfkxTbRLNyG194IaXs/xEWUoS
         jLyLaApaW7lJfIPqcnVgTAXI2wPRIDD5IEt0eei/gHPa52XYdEGu3Yv6ABmr51IcxZBk
         tzGqdzOKKOe0G4tHuO4Ha08fK/HfskixBVX7vwk/Qnkw3wUIYACVUep4eMdHtwRxGYLA
         kmnJZvCziDR3Q3XnogWSCmbvNOWjISFLJAl4ImTG+laGG1gawPp43GwUx8PFIr3xcOPh
         5WCgzQu+lObeNx4R9MJSstU413QlTbQLeWlex3gV+g+RiliGQ3yrh6d8l/qpYmBhjqPy
         uHAg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.68 as permitted sender) smtp.mailfrom=LDuncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vSWpmNIlr+ABgUHiBd+C2hYcvp9VVEpDtTIJOVnW1a8=;
        b=Nw99A0euxJZ6QRLaY5WUgvx+sSOnyQno27NhfChf/TliR486pWo813qS4ZTx2XrLJQ
         UQthSol7WIhO0fi5jrnYpumYWrEtu9Gn2HMLRSCwWlTPAgj8AbwFqddeLgO0dMYV2tYd
         Q8ZsTgIefrdY2XdxnJWjtUOUngIQ28MWisJuPlVLvRVsB1fxVQrXS8jjSj4iSLB0oDZ4
         TOP+1HGpiOChkmj6UPEZQB8waRFFBFRMT76WxDmSdVjZI+l9PQ1+8KHX2sSw1pwei5uv
         qiqLoSWCe+LAYBKv2TdtAidKV0gv8FGenhYqui/r37CzshxEqc2uemBW8yqP+F4nyeO5
         79jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vSWpmNIlr+ABgUHiBd+C2hYcvp9VVEpDtTIJOVnW1a8=;
        b=akbkwlwBmdIXLPVAmay9p+C6aRHuzoNetIvWwA9IglRn8dLLCozCy3+mJAC+1rMN4A
         ae1JcmtRKts10e/Aax58rMxjfFWRUuYoBcfoez5DirsKB4CIHcFakP+YYMF3lLHp3l5O
         czduDJvQZGxRd+cOvLupsB4YGLgGI7bvFYUqrQjKXVGMlxfcJ2GL0mVr5fdouEMfIVG0
         aWt2W1NR79B4+d2wwIE612i2U7k4QXQ6cDugkw7swbsdSfYWi1qWoe9GPLkGm0DlXSKr
         DPHhIf/KLCPACKeHXfBC9jMIi3vwghNnKu7Vdk2csXNr5dm/nYr3q3HDgflbyhDeIXhs
         pNoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXJXeBmisja81U8VA71w8gBq4CZ6iAhOfKvxCLrpjEFDf/7hlyB
	lO0vecMHf/yP21LG7Cg9ShQ=
X-Google-Smtp-Source: APXvYqz/YtuZ2E9r+TzY4UwHPi4OO2SvZzJtMeMJZdUpvDnBiMOHhU7Vt39wtdXGtJFI+YMyiNGQYQ==
X-Received: by 2002:ab0:2814:: with SMTP id w20mr24626068uap.95.1575916206661;
        Mon, 09 Dec 2019 10:30:06 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6102:5c7:: with SMTP id v7ls1861796vsf.2.gmail; Mon, 09
 Dec 2019 10:30:06 -0800 (PST)
X-Received: by 2002:a67:f2d7:: with SMTP id a23mr20960125vsn.114.1575916206019;
        Mon, 09 Dec 2019 10:30:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575916206; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q/bgFKRGoNxnqUy0yMmua+XdEtF6PFQz2TtOQVOrjYtaeEgaowUNdknC5uumPl+gaH
         OOGe92glrsIAKQR7dOQMtUCljtaaHi9DTmVWeZfBl5qdXPpd8WqUdMnCeZnOGga4G/0V
         t5WFA7dhpIBoD7Z1diKlK9M5tZOdFUV2UCk5BR8JVR0MTeZydr33A2oC2KvS6CntVuSN
         r0ba7Ww9pXe53oEmPiEz2ZYD4IRjGTRKmB+8no/87bKmytqypRxCCp9xgzuSorsbfVB5
         F6w74WUplBr9xX5w9KWn+FqaFp5hVu9QlnOkdx6QeSwWLQL7soqrsfVGBY5Lx7eGC+7V
         oUqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=W20Let1MVR2iMQ2M0LM2HIE2pFOzfULdDXjGsTMehfI=;
        b=wfhEHilFCNAqUO6yH7ZePc5NqEp64BZ3tUxHsLLZtgwrTwJ/4s5tL8x0ld1WmoPLSN
         /PLAew0BoivSQqkfR+VXT+jdfviHrsGppt31xjDMz83i2E0al2CAuE+dIcTlVNt788EM
         Ou/BE8tMN+lNMmUbWHuXUckBcqV43b3Jm+r02US7VJnAwaSHThzJoi6QR281wGGjvMwk
         M9s5C3mYtrEMx6PjTha1zpLZMtZDarH0cwhhV+5i7ojMf+QNs91X/YQ/jso5+2Cn2Dj9
         azkYfulB6IXDvjyqIeYOL6Fuw2PN/HCVzQfYS0Fhi38yoHTfm0fv6TQgnMf5zFFT33uS
         o47A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.68 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m9a0003g.houston.softwaregrp.com (m9a0003g.houston.softwaregrp.com. [15.124.64.68])
        by gmr-mx.google.com with ESMTPS id x127si43953vkc.0.2019.12.09.10.29.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 10:30:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.68 as permitted sender) client-ip=15.124.64.68;
Received: FROM m9a0003g.houston.softwaregrp.com (15.121.0.190) BY m9a0003g.houston.softwaregrp.com WITH ESMTP;
 Mon,  9 Dec 2019 18:29:23 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M9W0067.microfocus.com (2002:f79:be::f79:be) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 9 Dec 2019 18:29:15 +0000
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (15.124.8.13) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Mon, 9 Dec 2019 18:29:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l5+AB199WQ/qQIImsB51cI5VGTnc9fChaZTNRmfqnfH6eiZRfIflzEc00N81/t3wvWGczlty+HM9nhqTxpdTw6LfoAI2qHkilNQnXgMJH2ThyG/rnU+pbSN4V2lLaHy4AhIPWK8N3uGKjkFBdojzmuGG3TdJoWQ/e1Si1ofHtmu9PE3LYk5Fk6J+txR/y+9rt6dXjW0K1QkJKBTTBoNav+vmpR4ls/Xxk5+e8IiVeIr1BKKPEG8cCXQloNYk8PsUCoqGT/dX744xzVJIKrwDQZ5b2w8VK4s20hT6mYm+fitNU7jsoHn9qk3Yp07lO/1O5NVEu6I6hmLpK/qL0WJrTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W20Let1MVR2iMQ2M0LM2HIE2pFOzfULdDXjGsTMehfI=;
 b=IYaHyCgnDtF2VRO6roSNWnbJHnC6liD+e0xIVfEZzUz7/ZdKvmPqrM6HVgePay3Bd70t4/ZzDEC8ujZis/pGU4Wf4J8CTmJCuonC4kTSCsZoX1qAzjX6lMneoGBnyNTivh97XtJCY5JAq/WKphe2s4MCh9yUjX24ZoxC0y68lnxyMEtdG3zzI6CVJhaOrqteKBb71lZETSfB4CFmsw3jN/u4GcVirRww1dRlJjEtJ79iMVeVCkPKPmkVB/Nxn+JNc9szTMctVrWOASeDR3CHL2trQkA+0fSsCcYrEyRmoJ8QwuT1Q+OxJk11NVgNHY/nCuPcmYjI1d0dmM+iBMemhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from MN2PR18MB3278.namprd18.prod.outlook.com (10.255.237.204) by
 MN2PR18MB2702.namprd18.prod.outlook.com (20.178.255.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Mon, 9 Dec 2019 18:29:14 +0000
Received: from MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45]) by MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45%3]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 18:29:14 +0000
From: Lee Duncan <LDuncan@suse.com>
To: Gabriel Krisman Bertazi <krisman@collabora.com>, "cleech@redhat.com"
	<cleech@redhat.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>
CC: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>, Bharath Ravi
	<rbharath@google.com>, "kernel@collabora.com" <kernel@collabora.com>, "Dave
 Clausen" <dclausen@google.com>, Nick Black <nlb@google.com>, Vaibhav
 Nagarnaik <vnagarnaik@google.com>, Anatol Pomazau <anatol@google.com>, Tahsin
 Erdogan <tahsin@google.com>, Frank Mayhar <fmayhar@google.com>, Junho Ryu
	<jayr@google.com>, Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH] iscsi: Perform connection failure entirely in kernel
 space
Thread-Topic: [PATCH] iscsi: Perform connection failure entirely in kernel
 space
Thread-Index: AQHVrr16PHGuQC15fU2C8z10O/TCgKeyH5WA
Date: Mon, 9 Dec 2019 18:29:14 +0000
Message-ID: <9865d3ff-676f-7502-d1a5-dd41cb940cd3@suse.com>
References: <20191209182054.1287374-1-krisman@collabora.com>
In-Reply-To: <20191209182054.1287374-1-krisman@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0094.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:76::34) To MN2PR18MB3278.namprd18.prod.outlook.com
 (2603:10b6:208:168::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ba60116-8fbc-4b5c-9404-08d77cd5b143
x-ms-traffictypediagnostic: MN2PR18MB2702:
x-microsoft-antispam-prvs: <MN2PR18MB27024C7DE483FB0C93200472DA580@MN2PR18MB2702.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:466;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(376002)(396003)(136003)(346002)(366004)(39860400002)(199004)(189003)(71190400001)(36756003)(81166006)(229853002)(66946007)(81156014)(71200400001)(66446008)(66476007)(64756008)(66556008)(186003)(8676002)(52116002)(86362001)(2906002)(110136005)(26005)(6486002)(478600001)(54906003)(4326008)(8936002)(6512007)(31696002)(5660300002)(316002)(305945005)(6506007)(2616005)(53546011)(31686004)(7416002);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR18MB2702;H:MN2PR18MB3278.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 61BE5hhMsNhSDbyr2Q8+/JExKIFBalolalnFUnZgHf4Ir0GFdsr3Brvik8yhrgXc50iebm8gMpjHbk1515MPExNWdaFMlHsODwrJBDMbMcMBRWEAcxY4YT56sCZRsHo5i30NJHbj3DKyPCD3hVQl3P+uf4T+gUd+ShVC7qmP2fJDAPaArDUX/LAsqhNEUKJJiC3t+MbsWL/4iPqRNa4tgESJdIo/UsrLM3ZtKKbKyLeAqTVLhgOKR55c0El/NnAfiTq6ab69Vs8VGKZam2AFRWZW1zQ1ur2/ucpiGBhmuhXzWyX+9FmKkdWojKBuBfz/dP+g1Ly2Bazp2K78JLZF35Aryf09khC0BdkD5H476Puu/5l+n86tFZx3AFDKJFa9ZaAGVGry8s1flIaw6T6Z+uw1DasGsROBmInzcAlSnmLvHWP8CJJ2H7Ht7zQ1oW6n
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <EEE09393FAAF7040BD36EE9EC427ADEC@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ba60116-8fbc-4b5c-9404-08d77cd5b143
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 18:29:14.1418
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IClin7jC6DG+fLhD1qCJ76i+GSPDZhvdXAbwvBS5QKgkbCjIK0fSFay1B4sDLJE3Ovnn+0X7lex40Fy6M+MlwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2702
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 15.124.64.68 as permitted sender) smtp.mailfrom=LDuncan@suse.com
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

On 12/9/19 10:20 AM, Gabriel Krisman Bertazi wrote:
> From: Bharath Ravi <rbharath@google.com>
> 
> Connection failure processing depends on a daemon being present to (at
> least) stop the connection and start recovery.  This is a problem on a
> multipath scenario, where if the daemon failed for whatever reason, the
> SCSI path is never marked as down, multipath won't perform the
> failover and IO to the device will be forever waiting for that
> connection to come back.
> 
> This patch implements an optional feature in the iscsi module, to
> perform the connection failure inside the kernel.  This way, the
> failover can happen and pending IO can continue even if the daemon is
> dead. Once the daemon comes alive again, it can perform recovery
> procedures if applicable.


I don't suppose you've tested how this plays with the daemon, when present?


> 
> Co-developed-by: Dave Clausen <dclausen@google.com>
> Signed-off-by: Dave Clausen <dclausen@google.com>
> Co-developed-by: Nick Black <nlb@google.com>
> Signed-off-by: Nick Black <nlb@google.com>
> Co-developed-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Signed-off-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Co-developed-by: Anatol Pomazau <anatol@google.com>
> Signed-off-by: Anatol Pomazau <anatol@google.com>
> Co-developed-by: Tahsin Erdogan <tahsin@google.com>
> Signed-off-by: Tahsin Erdogan <tahsin@google.com>
> Co-developed-by: Frank Mayhar <fmayhar@google.com>
> Signed-off-by: Frank Mayhar <fmayhar@google.com>
> Co-developed-by: Junho Ryu <jayr@google.com>
> Signed-off-by: Junho Ryu <jayr@google.com>
> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Bharath Ravi <rbharath@google.com>
> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 46 +++++++++++++++++++++++++++++
>  include/scsi/scsi_transport_iscsi.h |  1 +
>  2 files changed, 47 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 417b868d8735..7251b2b5b272 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -36,6 +36,12 @@ EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_session);
>  EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_tcp);
>  EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_sw_tcp);
>  
> +static bool kern_conn_failure;
> +module_param(kern_conn_failure, bool, S_IRUGO|S_IWUSR);
> +MODULE_PARM_DESC(kern_conn_failure,
> +		 "Allow the kernel to detect and disable broken connections "
> +		 "without requiring userspace intervention");
> +
>  static int dbg_session;
>  module_param_named(debug_session, dbg_session, int,
>  		   S_IRUGO | S_IWUSR);
> @@ -84,6 +90,12 @@ struct iscsi_internal {
>  	struct transport_container session_cont;
>  };
>  
> +/* Worker to perform connection failure on unresponsive connections
> + * completely in kernel space.
> + */
> +static void stop_conn_work_fn(struct work_struct *work);
> +static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
> +
>  static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
>  static struct workqueue_struct *iscsi_eh_timer_workq;
>  
> @@ -1609,6 +1621,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
>  static LIST_HEAD(sesslist);
>  static DEFINE_SPINLOCK(sesslock);
>  static LIST_HEAD(connlist);
> +static LIST_HEAD(connlist_err);
>  static DEFINE_SPINLOCK(connlock);
>  
>  static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
> @@ -2245,6 +2258,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>  
>  	mutex_init(&conn->ep_mutex);
>  	INIT_LIST_HEAD(&conn->conn_list);
> +	INIT_LIST_HEAD(&conn->conn_list_err);
>  	conn->transport = transport;
>  	conn->cid = cid;
>  
> @@ -2291,6 +2305,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
>  
>  	spin_lock_irqsave(&connlock, flags);
>  	list_del(&conn->conn_list);
> +	list_del(&conn->conn_list_err);
>  	spin_unlock_irqrestore(&connlock, flags);
>  
>  	transport_unregister_device(&conn->dev);
> @@ -2405,6 +2420,28 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
>  }
>  EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
>  
> +static void stop_conn_work_fn(struct work_struct *work)
> +{
> +	struct iscsi_cls_conn *conn, *tmp;
> +	unsigned long flags;
> +	LIST_HEAD(recovery_list);
> +
> +	spin_lock_irqsave(&connlock, flags);
> +	if (list_empty(&connlist_err)) {
> +		spin_unlock_irqrestore(&connlock, flags);
> +		return;
> +	}
> +	list_splice_init(&connlist_err, &recovery_list);
> +	spin_unlock_irqrestore(&connlock, flags);
> +
> +	mutex_lock(&rx_queue_mutex);
> +	list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
> +		conn->transport->stop_conn(conn, STOP_CONN_RECOVER);
> +		list_del_init(&conn->conn_list_err);
> +	}
> +	mutex_unlock(&rx_queue_mutex);
> +}
> +
>  void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>  {
>  	struct nlmsghdr	*nlh;
> @@ -2412,6 +2449,15 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>  	struct iscsi_uevent *ev;
>  	struct iscsi_internal *priv;
>  	int len = nlmsg_total_size(sizeof(*ev));
> +	unsigned long flags;
> +
> +	if (kern_conn_failure) {
> +		spin_lock_irqsave(&connlock, flags);
> +		list_add(&conn->conn_list_err, &connlist_err);
> +		spin_unlock_irqrestore(&connlock, flags);
> +
> +		queue_work(system_unbound_wq, &stop_conn_work);
> +	}
>  
>  	priv = iscsi_if_transport_lookup(conn->transport);
>  	if (!priv)
> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
> index 325ae731d9ad..2129dc9e2dec 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -190,6 +190,7 @@ extern void iscsi_ping_comp_event(uint32_t host_no,
>  
>  struct iscsi_cls_conn {
>  	struct list_head conn_list;	/* item in connlist */
> +	struct list_head conn_list_err;	/* item in connlist_err */
>  	void *dd_data;			/* LLD private data */
>  	struct iscsi_transport *transport;
>  	uint32_t cid;			/* connection id */
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9865d3ff-676f-7502-d1a5-dd41cb940cd3%40suse.com.
