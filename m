Return-Path: <open-iscsi+bncBD54HHNYIIIM7W645UCRUBAA57YUS@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B05E780F
	for <lists+open-iscsi@lfdr.de>; Mon, 28 Oct 2019 19:05:05 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id 125sf8969815iou.7
        for <lists+open-iscsi@lfdr.de>; Mon, 28 Oct 2019 11:05:04 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1572285904; cv=pass;
        d=google.com; s=arc-20160816;
        b=v9/00HxqqIZekX8x3zhr27Jx88CRrz5hvhEDpWC4W06v9Q3Aen5pdwvVignM3un0KS
         9kYvg/BraSRq7ltWUTehAHAy3fItcd9vmLS5b58ijWfLt+BbojqKArFHzY5f4axJdhDA
         VLn1Fu3vDJekZzRy9fr/0PudfcMCWDP730BwEUNQQKZeWQ/+nYpD4BxcHLU/2OJSb8ha
         Rptp8K3ZUbXbAGpjv0oLuLT7s0nmnyARcMgWIj/gdPrr500Sae0BEAtw0uYrYMrG0988
         wE8zCnOVgTWgyFM0hjHprGtoGveTD2BihOlYgg9HaBKDQhdJ7xXjEf8fdYbqugfGcUFR
         s/0g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=wJD91ldl3dauzuw6w9xweJugJuJKg+HrtX5UPdVIw7M=;
        b=Fv+rU60K5NdrgHxQYxbtw59nCOHP4WR6W3WhkTDPxG2YQrzk3lZ0A7tIKEW/FZvj1n
         LFc+YCvPyc9IccsKUZfAHmg40MXzjzcbbTohYl+wNxZhfl0u7VUUgjStNz5eCbARJvPj
         Vjzv28VtN6Rmanu8zpmZZCdFLYD/zpp+O/pSLZcS8hrslIv9FIC90iNtNUI6414lz/wF
         4+ILWkmt1gZgeymZ6PuDKbJaXsDjc4mwC0gmDTp37TSaMsPLDuKSbD22tXiuk1TtMrBu
         NvD4h8eLw6FBNpSRUSagWBi5z4QeS0XiYww5FdKJk8NGBtZwFC8CvYPdh/US5WXO++0n
         k3Lw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.67 as permitted sender) smtp.mailfrom=LDuncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wJD91ldl3dauzuw6w9xweJugJuJKg+HrtX5UPdVIw7M=;
        b=FxsLIDillop9QFoGATBNuV7VewUvJrVIud2iXAaZQ5e2Iy7YprH6kEImg9w74QhV3G
         4w9cFPwmWvmdIec3DZMepQjqNYDjNxrDfYc7eRop8WDuMdoWAUWh/lQjCdE5G/ugpyyl
         +WhVC7d5080lyQkWVt6AFRXLNYHYIAbPhjdhFLzkYAsWHSrkyUkEbF7hckwYlk161+zU
         6xd3VcHWayqRp7YIxw+Eu2NTigu8OP3+5aVQ9SGcPhBmWqNVqITnX8e27MzCOXRjPIb/
         IJOZ2fOOd+QF5x67JOoA8vGQP1LHQ2YZcbQIcXouO06MDYHI6zHj9CO+3D2k6yhx4WZx
         ZR3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wJD91ldl3dauzuw6w9xweJugJuJKg+HrtX5UPdVIw7M=;
        b=DARND9pG7RVyaprIZ1RSeAM/ipVvRUZ/Ali6kawNNMQCiGnJn+f1f9OTSMaKX49aIL
         hsbFMHls0ajzx1WArb8f5W3xNRXFbzbWnsU6hC3MDkxVzcOOjnsQS7oOhC6zirSv5K1x
         Znx/NX1mcYSr6PQ4WeEGbkk57Y43ztjgFS8XhnEbC9LUW8FdrGVlKvG5mZHLWvVKIIfs
         I2V35h0OtyQZJxIi4mcclsU6L2ln4URbJoHUnDCl5UWYSTzvz7mUnC2avrsPlL9mxLMM
         YoNHXe/UKTu/kuQ2LZYb/18H48XT9y2jJ2XeNDB1UxYX66Mk92+6yPdC6BqtwsxHyBdD
         up2Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV8Tey3ALFBNuuJBbNjrwy76fXhJ0cptQdJmHOUSQUfvZuUMqXw
	z7fxSNl1iCuzYDx8YaGidCQ=
X-Google-Smtp-Source: APXvYqzJ8YSoHq60EoRV3hfNeN/W6kAmGtXJizbjeXs+Uk2s8j9j45gkM+NFqxSWSQRcrkiMofoSYA==
X-Received: by 2002:a92:6510:: with SMTP id z16mr20689336ilb.183.1572285903945;
        Mon, 28 Oct 2019 11:05:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:9e4a:: with SMTP id i10ls2792009ioi.6.gmail; Mon, 28 Oct
 2019 11:05:03 -0700 (PDT)
X-Received: by 2002:a6b:6011:: with SMTP id r17mr2873599iog.245.1572285903378;
        Mon, 28 Oct 2019 11:05:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572285903; cv=pass;
        d=google.com; s=arc-20160816;
        b=wOGNX+5YUydXxpIdXq7U6HwilXkWyOMZdDKobKzT6Gt0cKPct/LAtegaTXzcikYr6G
         OT2kHYWYAkPyi9LW8PXsxe3tQNN7I+/u3u49t5DJWOaptpNJgkDggy77XYxOl0dgYe0K
         r1AJtFBW7KDDVXWXGFgYGnw6B5MiE3vHbCCL9pXxjylR5uMbsWIBNUmCQuRbUcBbGlwO
         ypcegKyIPksssn+ZCdKKij+v4iO9CbQKTIQBqL2YAa6U2SmULTjTgEkQ4fHuwVxfwiw7
         GIoiuiVuGk1bp84FrYC92JehVBJz4wOT/b8RHcr/QwgurwxEnudlHefvQgpNMiOk77FE
         3zMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=EBCqRrfB4l68Dsxfc+7eIS8wJi93wNvkXn6u6caCMKM=;
        b=KVWoTxQZseCx6Fn3Ch93gLVbUGxuqUGHghVCzj6r3WAW8D4PkzyU6U/xuagFHgjkDo
         hvbA2MhkQsnGAL8Q61vlZy8FdxPrGkLKRqcE0oFU5J0AhLSov53a10Kzyf9Y064ndOKu
         9AM+DjlxcgtCgxV/X80B0z9jtIA51Hvb82ArAXV+x4slnMkUdFk5L3SPJTJcxHxHBUoD
         lPLzf/99tb80Nj2d0P8D3d7i/wQ+ASNF/dx3bxZTaVRbiZgUz/sgXXjZVzd7HvqobMrS
         yo35zRk/OriWU6dwEXu3KAGagQuncQ609yrSfuslkeF9J2fHTnJJI8T1qyRsE1Jnm4GL
         VfqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.67 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m9a0002g.houston.softwaregrp.com (m9a0002g.houston.softwaregrp.com. [15.124.64.67])
        by gmr-mx.google.com with ESMTPS id h14si36281ilc.0.2019.10.28.11.04.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 11:05:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.67 as permitted sender) client-ip=15.124.64.67;
Received: FROM m9a0002g.houston.softwaregrp.com (15.121.0.190) BY m9a0002g.houston.softwaregrp.com WITH ESMTP;
 Mon, 28 Oct 2019 18:04:16 +0000
Received: from M9W0068.microfocus.com (2002:f79:bf::f79:bf) by
 M9W0067.microfocus.com (2002:f79:be::f79:be) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 28 Oct 2019 18:04:40 +0000
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (15.124.72.10) by
 M9W0068.microfocus.com (15.121.0.191) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Mon, 28 Oct 2019 18:04:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DCZR9n+aOhp9unMfOGUg2MWK9zgl0cMkxbm+ohMkNRhnm5uYXfASCp+0yqhA+Omc60Yn6A8OawjbmgX62kkU5k0PHreWpcjRDml0QcaAqAuzZeYOJEttvgL3Lr36hpgWpztbLOOdhrJhpRCjmgo3qNGJdP5yMDxoumGABMZbgIn2KjrN6BEXkaN9V4/1HzOnck3QoH2uUQOob+bjmgr1eWJy4x4quqtlsQROFMiiFSI0+OEEtJr5u3wbs6jkq4RieAajETZC8iYItVDdkADSR+OxmmH74GXTJwHqUrz7zSg4Qg8OkXSMwFgGtYaVJ2z5hKvFtCFH5TIkBqUmOaV5/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EBCqRrfB4l68Dsxfc+7eIS8wJi93wNvkXn6u6caCMKM=;
 b=Wf0PQe2H+UQCTdjDMZ/bv8dX/XltzfU0OA0/SNMNaianHf8N4KsyznASHJjdHrykRahW6gs1Zk039M3nWWy4d/yXSILnK8WfvW5/zNGWa7M5Lv4TyNs9fUM0uRbbuHK1yUsINSCZHGqqa7UZiIkhRB/bZM5SDr4S1Q8bFydY8xb6i0m51+s7Eph6qHeNWCdf+Y5BL1E+uE2ULNvjg7VSIB+S3mMKZiO3ZVdeGxp6K+LclasKSkbIfIC43jkzTxpT8O0182J+ejb4ZZzLJEogoL0wTE4l7k2HSD+5kgc16OaXowjO2Z4ZMMXz8yReNXnHojAFePX8UfEXJxgohG47Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from MN2PR18MB3278.namprd18.prod.outlook.com (10.255.237.204) by
 MN2PR18MB2654.namprd18.prod.outlook.com (20.179.84.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Mon, 28 Oct 2019 18:04:39 +0000
Received: from MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::b499:7a76:fb32:b220]) by MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::b499:7a76:fb32:b220%6]) with mapi id 15.20.2387.025; Mon, 28 Oct 2019
 18:04:39 +0000
From: Lee Duncan <LDuncan@suse.com>
To: "wubo (T)" <wubo40@huawei.com>, "cleech@redhat.com" <cleech@redhat.com>,
	"jejb@linux.ibm.com" <jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
CC: Mingfangsen <mingfangsen@huawei.com>, "liuzhiqiang (I)"
	<liuzhiqiang26@huawei.com>
Subject: Re: [PATCH] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Topic: [PATCH] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Index: AdWL2reJ1uh470cQT+idNsWy+95OAQB3236A
Date: Mon, 28 Oct 2019 18:04:39 +0000
Message-ID: <92b221da-18a8-8b7b-0436-ca59088fd45b@suse.com>
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DE9E71@DGGEML525-MBS.china.huawei.com>
In-Reply-To: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DE9E71@DGGEML525-MBS.china.huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0188.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::32) To MN2PR18MB3278.namprd18.prod.outlook.com
 (2603:10b6:208:168::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3d2cc07-cfdb-43a6-1b20-08d75bd14d0e
x-ms-traffictypediagnostic: MN2PR18MB2654:
x-microsoft-antispam-prvs: <MN2PR18MB26548845768C58A7FA235B76DA660@MN2PR18MB2654.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0204F0BDE2
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(199004)(189003)(66946007)(66476007)(66556008)(66446008)(64756008)(8676002)(81156014)(81166006)(476003)(6512007)(11346002)(486006)(76176011)(52116002)(2616005)(99286004)(6246003)(2906002)(8936002)(446003)(186003)(102836004)(6486002)(229853002)(5660300002)(386003)(6506007)(53546011)(66066001)(6436002)(25786009)(14444005)(256004)(31696002)(478600001)(7736002)(71190400001)(31686004)(305945005)(2501003)(110136005)(316002)(54906003)(3846002)(71200400001)(6116002)(36756003)(4326008)(2201001)(14454004)(80792005)(86362001)(26005);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR18MB2654;H:MN2PR18MB3278.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EOHwDFZqLwCVKBT7no7fuFqLe/Y/qz8ZV8iQvrTBdQmRfkNY92LAWrngfmUaLntZXxyxBuRplkkSi+SmpGJZ7enB1MltbYgYFIU0puXsqlD4aboe+PnFn1FtI6aUI4b+3ESUYOtbrgrV4NeYzSSQyyGxtF7IsO7EcZAmtvJtGf2b5sp1cRHYY4fuloAgQaDqeRcB9uXeJKt8FjbPHV9jJvD8IsWN99EmOzGAXLSN8+jDbyaA+aEJzr+JSmRGf/DPZ5UQ0i+n23zR+LAkoHVz5bbEnUUmOa9EBTq305Mbg0B/1Gv2eS/jgbG/PmRakyFRp8ic1hPccoWIteGNO0A762LOS0AcLtHn940Ei9VVHLq4Z+gP+8RzwmyPaRcf3255JQ10vmUNMKbhSyXqA9kQmMYFuW4sE0PKBIqKig0QhhVqpGI9QirGd25GzaRLhb/k
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <A01683403433E34B9164BF4A357C6CF5@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d3d2cc07-cfdb-43a6-1b20-08d75bd14d0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2019 18:04:39.6376
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 989AR3NvcfrtIwZYVDk3052DEou2NX8A46SkLpETzUDGQ/VUrmfIXq0cvtfFlVqj5TUkXAdgkWiEZgB9HCI1KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2654
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 15.124.64.67 as permitted sender) smtp.mailfrom=LDuncan@suse.com
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

On 10/26/19 1:55 AM, wubo (T) wrote:
> From: Bo Wu <wubo40@huawei.com>
> 
> In iscsi_if_rx func, after receiving one request through iscsi_if_recv_msg
> func,iscsi_if_send_reply will be called to try to reply the request in 
> do-loop. If the return of iscsi_if_send_reply func fails all the time, one
> deadloop will occur.
>  
> For example, a client only send msg without calling recvmsg func, then it
> will result in the watchdog soft lockup. The details are given as follows,
> 
> Details of the special case which can cause deadloop:
> sock_fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_ISCSI); 
> ... 
> retval = bind(sock_fd, (struct sock addr*) & src_addr, sizeof (src_addr); 
> ... 
> while (1) { 
> 	state_smg = sendmsg(sock_fd, &msg, 0); 
> } 
> // Note: recvmsg (sock_fd, & msg, 0) is not processed here. 
> close(sock_fd); 
> 
> watchdog: BUG: soft lockup - CPU#7 stuck for 22s! [netlink_test:253305]
> Sample time: 4000897528 ns(HZ: 250)
> Sample stat: 
> curr: user: 675503481560, nice: 321724050, sys: 448689506750, idle: 4654054240530, iowait: 40885550700, irq: 14161174020, softirq: 8104324140, st: 0
> deta: user: 0, nice: 0, sys: 3998210100, idle: 0, iowait: 0, irq: 1547170, softirq: 242870, st: 0
> Sample softirq:
> 	TIMER:        992
> 	SCHED:          8
> Sample irqstat:
>  irq    2: delta       1003, curr:    3103802, arch_timer
> CPU: 7 PID: 253305 Comm: netlink_test Kdump: loaded Tainted: G           OE     
> Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
> pstate: 40400005 (nZcv daif +PAN -UAO)
> pc : __alloc_skb+0x104/0x1b0
> lr : __alloc_skb+0x9c/0x1b0
> sp : ffff000033603a30
> x29: ffff000033603a30 x28: 00000000000002dd 
> x27: ffff800b34ced810 x26: ffff800ba7569f00 
> x25: 00000000ffffffff x24: 0000000000000000 
> x23: ffff800f7c43f600 x22: 0000000000480020 
> x21: ffff0000091d9000 x20: ffff800b34eff200 
> x19: ffff800ba7569f00 x18: 0000000000000000 
> x17: 0000000000000000 x16: 0000000000000000 
> x15: 0000000000000000 x14: 0001000101000100 
> x13: 0000000101010000 x12: 0101000001010100 
> x11: 0001010101010001 x10: 00000000000002dd 
> x9 : ffff000033603d58 x8 : ffff800b34eff400 
> x7 : ffff800ba7569200 x6 : ffff800b34eff400 
> x5 : 0000000000000000 x4 : 00000000ffffffff 
> x3 : 0000000000000000 x2 : 0000000000000001 
> x1 : ffff800b34eff2c0 x0 : 0000000000000300 
> Call trace:
> __alloc_skb+0x104/0x1b0
> iscsi_if_rx+0x144/0x12bc [scsi_transport_iscsi]
> netlink_unicast+0x1e0/0x258
> netlink_sendmsg+0x310/0x378
> sock_sendmsg+0x4c/0x70
> sock_write_iter+0x90/0xf0
> __vfs_write+0x11c/0x190
> vfs_write+0xac/0x1c0
> ksys_write+0x6c/0xd8
> __arm64_sys_write+0x24/0x30
> el0_svc_common+0x78/0x130
> el0_svc_handler+0x38/0x78
> el0_svc+0x8/0xc
> 
> Here, we add one limit of retry times in do-loop to avoid the deadloop.
> 
> Signed-off-by: Bo Wu <wubo40@huawei.com>
> Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 417b868d8735..f377bfed6b0c 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -24,6 +24,8 @@
>  
>  #define ISCSI_TRANSPORT_VERSION "2.0-870"
>  
> +#define ISCSI_SEND_MAX_ALLOWED     10
> +
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/iscsi.h>
>  
> @@ -3682,6 +3684,7 @@ iscsi_if_rx(struct sk_buff *skb)
>  		struct nlmsghdr	*nlh;
>  		struct iscsi_uevent *ev;
>  		uint32_t group;
> +		int retries = ISCSI_SEND_MAX_ALLOWED;
>  
>  		nlh = nlmsg_hdr(skb);
>  		if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
> @@ -3710,8 +3713,11 @@ iscsi_if_rx(struct sk_buff *skb)
>  				break;
>  			if (ev->type == ISCSI_UEVENT_GET_CHAP && !err)
>  				break;
> +			if (retries <= 0)
> +				break;
>  			err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
>  						  ev, sizeof(*ev));
> +			retries--;
>  		} while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
>  		skb_pull(skb, rlen);
>  	}
> 

You could have used "if (--retries < 0)" (or some variation thereof) but
that may not be as clear, and certainly is only a nit. So I'm fine with
that.

But I would like to see some sort of error or even debug kernel message
if we time out waiting to receive a response. Otherwise, how will some
human diagnose this problem?

-- 
Lee Duncan

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/92b221da-18a8-8b7b-0436-ca59088fd45b%40suse.com.
