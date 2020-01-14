Return-Path: <open-iscsi+bncBD54HHNYIIINLUXX6ACRUBCTJJQQI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE4413AEF9
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Jan 2020 17:16:22 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id h18sf10915441ilc.2
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Jan 2020 08:16:22 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1579018581; cv=pass;
        d=google.com; s=arc-20160816;
        b=F1izkUvT8vt/a0mJofxBGmmyzWB8ipnsB0wBqHwQuimo2Eg/Fa2AYRKdX5hk0t4oBc
         bUcZVqC3SW4OLWoZsNWeemhhOkRR3zCZe0xLS2bYgcZgSw5xGI+wozaODGq6sC0AE9a+
         sPG+dRZITeMQiwXpSUAfEgNM5j2wFDpUkbLWAL4D0U+TLPNv459wbdKo5oGCXWBHAk8f
         rzvsV+WAtKxetIk7qApaB8U9UrEurAfia0jBTOHwzAfF9/IHUgzhuBdAnz8B457Pydfh
         FJ3weCEjWseLH0EDox+R9YPfFxFq5mUcUp7boziP3xOA/cLJmE24J8so/1ch/tiIjhJT
         3acw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=j/K+N7oyp8/GyBLaEeuaxEZ4YP7bpk81bx4Y5gYt9n0=;
        b=S/1alHlqxwM+cP1ujT7Or6BHmXivqjkHvT8DLyQVnsTC00tgmSA3n8XbkoqeFFto1f
         Z8Teyj4mJ/EZDgrKbGVWnmU+CjvB8FpmsN4jiTOAHOC41xAeypg/Iem1iDLpXNg9iO3x
         4NzVaQB9ajl+IXMnpreLXW+pkWZRM42A/qiEX2Vmqzcw0OC1FPgXT/PYxRD/eGDi+nes
         dfMEKIOqkkhZkao2N0kwEL8rKh1C3TSmgV/xXA11/tkv7PY9c1CoKWTRqnnaNUsUF1P/
         6yiEo861/6AXsI+t/4sOjuhFsYfEJ31LKhUhtJYH5b9IXJ/LlwEYdVy4RL08Dol81rjQ
         pXvw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.2.131 as permitted sender) smtp.mailfrom=LDuncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j/K+N7oyp8/GyBLaEeuaxEZ4YP7bpk81bx4Y5gYt9n0=;
        b=D37+Ya6ZQa3FDXFG58F2Io50lSpCgUW+W1X1WnSG7wTaCVnOIW3vPmUBM9Rrb3i2Yg
         8HjzCBbSlelU4UUydW0kgB6Y17IJ0jZarzn8dD0Ym91sJql06wbSmLgUw63BjZIPgpQr
         RKcxE3VCSqua8yMrr/VSRB8JL9Twk9m0Y74fGiqONvTupA9PAVO/zhSvgzWgJ7xtVRTU
         hO9V/DOH6zItRZpKsNnmJ9vp+ftL6tADj2cR5dj+pBJ5H7phLHViDzHjjZYACNGrX2bl
         JfqrCGt3knTbkdGAWxmeRuSaTjcTkssk5Gi8sxx5FrfVAcy7rlZSd5Fhi3as/yScQ6a9
         JdMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j/K+N7oyp8/GyBLaEeuaxEZ4YP7bpk81bx4Y5gYt9n0=;
        b=ZGZYNwChLb1WJtwZxqrO11qXkX0eVgV7dhjxjfL8Lcj++Ncafi+W5eyBrO9wS8n8BI
         l4tUdxS7uI5sgrp8Lk2RJo4OfNq6im7emIX0tyS/XplgSz8h0u+0dIA98VxjEL0mIbqM
         6XLGVq7R+s6pisDj8meqQNuMBOtQ4s7fN0+BW4J2L/HIVw6nJyTAmf0MO2EymhGnrjRl
         HjSxe9xlChV8LA++81hgWWc+Bclnz1IU+G8TODKb7d0FjhOuHrvQo88TJ8josvFLuqcp
         WLJ0s0pTJvVKy8a+08o5g8PT/iTJvJ2gYCtHUV6mXOEhTuBDncL6zI4GsMSWTxV0mINY
         lJIg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWugwZwx+qdXoBovmV4+zWhfR/Wh79GVdwn9XbbvuK2utAAT80t
	lcKNN2cgtGZ8CsA4XGAIimo=
X-Google-Smtp-Source: APXvYqylktJbaKuoVTq2yuSd2Af4usH+WlmwSdxoAvRGlWxrKIVdcm0GMPX/Au24vQaTq1rO6FkOFg==
X-Received: by 2002:a6b:b457:: with SMTP id d84mr16516375iof.35.1579018581481;
        Tue, 14 Jan 2020 08:16:21 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:90f:: with SMTP id t15ls2460671ioi.15.gmail; Tue, 14 Jan
 2020 08:16:21 -0800 (PST)
X-Received: by 2002:a5e:a713:: with SMTP id b19mr17086298iod.91.1579018581040;
        Tue, 14 Jan 2020 08:16:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579018581; cv=pass;
        d=google.com; s=arc-20160816;
        b=rTY+BEFOUcZRVd6dJViLOw7H8N1eo8Y/64/Pmas9c/f7YNrw7em8Ba10HdwYXwvm4N
         gLPacvPut6zgYveihuGefdGMlXgNl3uyg+bUg9UOcguyFIi0x90+U+e6MEELEQDe9wnV
         QFkoP1UW5xvoeVqQgiU1dA10g3x5g3qjbaLf42pe5cv4X/xVKnKv5uiQPOipfOxQHSE3
         G1LqLiguL/FtoGNtL6YQkroyYz+xZ+vCsUoyI6UP75XOOaW60m07hHXGrfiTKL5Nq1Af
         cST6IrfvhjEqb7bm6UhlhKczXIccQQRpqrf+Rlp/ki1w+0Isa/s7HlWeVMRygd0KQSIl
         Pmkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=GEEmPJdxOnKVWZlLhPlTyp+5AZqw+XwJNoVylRKyP8c=;
        b=pICWNa5jjQdvTefghxwmgIGF2tze3ShXE4FTMb2/vcgfZUhaPy0cMBqMl2kHPz3RFk
         VFzkPJEbkH4XR39hgdyYrC45xZ/63dE2Th3G4Pe9kK6JD1lUk22BOWDv3JktJXCutmFq
         BgKTjxv4uvhb0s+SNWfCXq+tBJUMZxG/ilbQ/a2xglGKQUNyhFywWsUXZpLNyRfy5P8E
         B+G29qugP1Ud/1+s5qCDQpqYRxJl3IK8w1UAUDf5KvLbAD3bOW+O60ktoMgXGfce6WNP
         akcQ8gEnPwr6BrJhva5bqDyWuiWSOhxmlmwmaKwY1wagZUxGRHcMNB1Tm/ku1YFDoNQ0
         Vwuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.2.131 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m4a0073g.houston.softwaregrp.com (m4a0073g.houston.softwaregrp.com. [15.124.2.131])
        by gmr-mx.google.com with ESMTPS id z6si603954iof.2.2020.01.14.08.16.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jan 2020 08:16:21 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.2.131 as permitted sender) client-ip=15.124.2.131;
Received: FROM m4a0073g.houston.softwaregrp.com (15.120.17.147) BY m4a0073g.houston.softwaregrp.com WITH ESMTP;
 Tue, 14 Jan 2020 16:13:52 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M4W0335.microfocus.com (2002:f78:1193::f78:1193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Tue, 14 Jan 2020 16:02:11 +0000
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (15.124.8.10) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Tue, 14 Jan 2020 16:02:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WsQrqsuI8B2+QkAeR4TPsNrSdKjra3B73rmvXpWpTULz0lC+YiBxp6hyN6bz1Q/wz4VfdyOomT4acCHhAtoXdkfEddGHRqW5cUoTDIF+ugaSVCYqOAPWDB7GVQ+bbntbvovLuYHCV4tcb+kxcbUV8h7+wBPrChgMW9PanS/g6PLJbVtQhhN8qGnTmkT9PJZPnsZxFk7pc3lu3yzVJuq0J0LAr0KrXMRhG5onIFv+FtK7JDgDCvyBWOpcOVs8HyYSTu9ybCjBevXWIHnRy6NsEO2VWrUIuZWy4Y/H6O6LXlvJ+JHDZF+1gjxRyz7jdrMgr3nTK5C+MSDWXMKwf2Didg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEEmPJdxOnKVWZlLhPlTyp+5AZqw+XwJNoVylRKyP8c=;
 b=MD4eI08PMqtubKZFp3qbneMYDt9CyOYajXp7b5v6MZalQ1eSwa8+4uXClHvdtLRhCoMfYyeWUWPyMDMvgHWmxyUTMi9s2QVzs/7KCck/JOf5bbiOb+KveMMVrRTJ++ZwxnoqI5z1r6JaRTJWXYRr0jXiaGfrtpvlaQE5CvThyuEfSwGKk9C9GN2AmTbyNwC4qKVrMVtkWTLeuBVDanA/eLNYtSZcoZq+PHMKnHUnuDezPVP8qC1Hg/hG+Khd9/b4iuBzRvFYzK1OtdeOmSS8W570NDiYzFCgvgC9a0u7gtKBu4il+4wvDUVeZDI647GPxZDEsSUKN5xhjZ4JQq0ucA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from MN2PR18MB3278.namprd18.prod.outlook.com (10.255.237.204) by
 MN2PR18MB2718.namprd18.prod.outlook.com (20.179.21.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Tue, 14 Jan 2020 16:02:10 +0000
Received: from MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::3050:6182:4666:6784]) by MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::3050:6182:4666:6784%5]) with mapi id 15.20.2623.017; Tue, 14 Jan 2020
 16:02:10 +0000
Received: from [192.168.20.3] (73.25.22.216) by CWLP123CA0123.GBRP123.PROD.OUTLOOK.COM (2603:10a6:401:87::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.10 via Frontend Transport; Tue, 14 Jan 2020 16:02:07 +0000
From: Lee Duncan <LDuncan@suse.com>
To: Gabriel Krisman Bertazi <krisman@collabora.com>
CC: "cleech@redhat.com" <cleech@redhat.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "kernel@collabora.com" <kernel@collabora.com>
Subject: Re: [PATCH RESEND] iscsi: Don't destroy session if there are
 outstanding connections
Thread-Topic: [PATCH RESEND] iscsi: Don't destroy session if there are
 outstanding connections
Thread-Index: AQHVvCuGUJliGCBQ4UGOl2aQaW4VKqfpS47jgAEkAwA=
Date: Tue, 14 Jan 2020 16:02:09 +0000
Message-ID: <d0278122-729b-b921-1343-40a23fb315f7@suse.com>
References: <20191226203148.2172200-1-krisman@collabora.com>
 <85ftgjt24w.fsf@collabora.com>
In-Reply-To: <85ftgjt24w.fsf@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CWLP123CA0123.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:401:87::15) To MN2PR18MB3278.namprd18.prod.outlook.com
 (2603:10b6:208:168::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 84a33815-3be1-48fb-3498-08d7990b1c73
x-ms-traffictypediagnostic: MN2PR18MB2718:
x-microsoft-antispam-prvs: <MN2PR18MB27186DD998BF2F13ECAABED7DA340@MN2PR18MB2718.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(366004)(199004)(189003)(81156014)(52116002)(16526019)(186003)(81166006)(6486002)(8936002)(71200400001)(6916009)(66946007)(66446008)(8676002)(64756008)(53546011)(66556008)(26005)(66476007)(16576012)(316002)(45080400002)(5660300002)(31696002)(2906002)(956004)(54906003)(2616005)(4326008)(478600001)(31686004)(36756003)(86362001);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR18MB2718;H:MN2PR18MB3278.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KdbaSbsEyMJD0+XLXFVOb6KKw6uNLPepXM4DKfqU4BKrNPxyoVSiu3m2GYHNedX6OJVN3IOrTJQHnpJKiwucxdigIg13+L4k2WxX+ahw6piv4rUzny8TO3nFbh97qI4FHh4OVm8hb+f3mJpTiKThfAfQ5lgNmZ1WOUlqSvo4Ikw2UabF+9EgrwSM3okd6+0EY9pNMA0pJSNieK0Itk29lPGmN1GtubNXTOIVNhv2VGoQQsQJJy2n7JleucthsXIsDSlDqrYtWwiKQ+L5PtIy3RxpgZAkOgjbyM8F9qzQ7E0TZ2rltSkmATWxlBp2lgust2++KLVX0v+Aca0kdJSf9p/p8IGtq6cZKM93sZqUNfOtuKnIEkFq/6wYgFFymlxhQkKTM25geUuuN8HLPOWz0YMNXYfm76ZBitNiAO/Vtp4rNR96r5NG9Csst18eYw4h
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <1B57EBE71DA1994D808271216E894BA2@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 84a33815-3be1-48fb-3498-08d7990b1c73
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 16:02:09.9875
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7BXbV0jyeJlEzvKsP+B6WCqUssuvwngu4KI+IThkNFw+ANVzbqSb2sSEU5UbfINaQ4tBmErpGQDGLS2yS+ImPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2718
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 15.124.2.131 as permitted sender) smtp.mailfrom=LDuncan@suse.com
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

On 1/13/20 2:36 PM, Gabriel Krisman Bertazi wrote:
> Gabriel Krisman Bertazi <krisman@collabora.com> writes:
> 
>> From: Nick Black <nlb@google.com>
>>
>> Hi,
>>
>> I thought this was already committed for some reason, until it bit me
>> again today.  Any opposition to this one?
> 
> Hi,
> 
> Pinging this patch.  Any oposion?
> 
>>> 8
>>
>> A faulty userspace that calls destroy_session() before destroying the
>> connections can trigger the failure.  This patch prevents the
>> issue by refusing to destroy the session if there are outstanding
>> connections.
>>
>> ------------[ cut here ]------------
>> kernel BUG at mm/slub.c:306!
>> invalid opcode: 0000 [#1] SMP PTI
>> CPU: 1 PID: 1224 Comm: iscsid Not tainted 5.4.0-rc2.iscsi+ #7
>> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
>> RIP: 0010:__slab_free+0x181/0x350
>> [...]
>> [ 1209.686056] RSP: 0018:ffffa93d4074fae0 EFLAGS: 00010246
>> [ 1209.686694] RAX: ffff934efa5ad800 RBX: 000000008010000a RCX: ffff934efa5ad800
>> [ 1209.687651] RDX: ffff934efa5ad800 RSI: ffffeb4041e96b00 RDI: ffff934efd402c40
>> [ 1209.688582] RBP: ffffa93d4074fb80 R08: 0000000000000001 R09: ffffffffbb5dfa26
>> [ 1209.689425] R10: ffff934efa5ad800 R11: 0000000000000001 R12: ffffeb4041e96b00
>> [ 1209.690285] R13: ffff934efa5ad800 R14: ffff934efd402c40 R15: 0000000000000000
>> [ 1209.691213] FS:  00007f7945dfb540(0000) GS:ffff934efda80000(0000) knlGS:0000000000000000
>> [ 1209.692316] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [ 1209.693013] CR2: 000055877fd3da80 CR3: 0000000077384000 CR4: 00000000000006e0
>> [ 1209.693897] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>> [ 1209.694773] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>> [ 1209.695631] Call Trace:
>> [ 1209.695957]  ? __wake_up_common_lock+0x8a/0xc0
>> [ 1209.696712]  iscsi_pool_free+0x26/0x40
>> [ 1209.697263]  iscsi_session_teardown+0x2f/0xf0
>> [ 1209.698117]  iscsi_sw_tcp_session_destroy+0x45/0x60
>> [ 1209.698831]  iscsi_if_rx+0xd88/0x14e0
>> [ 1209.699370]  netlink_unicast+0x16f/0x200
>> [ 1209.699932]  netlink_sendmsg+0x21a/0x3e0
>> [ 1209.700446]  sock_sendmsg+0x4f/0x60
>> [ 1209.700902]  ___sys_sendmsg+0x2ae/0x320
>> [ 1209.701451]  ? cp_new_stat+0x150/0x180
>> [ 1209.701922]  __sys_sendmsg+0x59/0xa0
>> [ 1209.702357]  do_syscall_64+0x52/0x160
>> [ 1209.702812]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>> [ 1209.703419] RIP: 0033:0x7f7946433914
>> [...]
>> [ 1209.706084] RSP: 002b:00007fffb99f2378 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
>> [ 1209.706994] RAX: ffffffffffffffda RBX: 000055bc869eac20 RCX: 00007f7946433914
>> [ 1209.708082] RDX: 0000000000000000 RSI: 00007fffb99f2390 RDI: 0000000000000005
>> [ 1209.709120] RBP: 00007fffb99f2390 R08: 000055bc84fe9320 R09: 00007fffb99f1f07
>> [ 1209.710110] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000038
>> [ 1209.711085] R13: 000055bc8502306e R14: 0000000000000000 R15: 0000000000000000
>>  Modules linked in:
>>  ---[ end trace a2d933ede7f730d8 ]---
>>
>> Co-developed-by: Salman Qazi <sqazi@google.com>
>> Signed-off-by: Salman Qazi <sqazi@google.com>
>> Co-developed-by: Junho Ryu <jayr@google.com>
>> Signed-off-by: Junho Ryu <jayr@google.com>
>> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
>> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
>> Signed-off-by: Nick Black <nlb@google.com>
>> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> ---
>>  drivers/scsi/iscsi_tcp.c            |  4 ++++
>>  drivers/scsi/scsi_transport_iscsi.c | 26 +++++++++++++++++++++++---
>>  2 files changed, 27 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
>> index 0bc63a7ab41c..b5dd1caae5e9 100644
>> --- a/drivers/scsi/iscsi_tcp.c
>> +++ b/drivers/scsi/iscsi_tcp.c
>> @@ -887,6 +887,10 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
>>  static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
>>  {
>>  	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
>> +	struct iscsi_session *session = cls_session->dd_data;
>> +
>> +	if (WARN_ON_ONCE(session->leadconn))
>> +		return;
>>  
>>  	iscsi_tcp_r2tpool_free(cls_session->dd_data);
>>  	iscsi_session_teardown(cls_session);
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>> index ed8d9709b9b9..271afea654e2 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -2947,6 +2947,24 @@ iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev)
>>  	return err;
>>  }
>>  
>> +static int iscsi_session_has_conns(int sid)
>> +{
>> +	struct iscsi_cls_conn *conn;
>> +	unsigned long flags;
>> +	int found = 0;
>> +
>> +	spin_lock_irqsave(&connlock, flags);
>> +	list_for_each_entry(conn, &connlist, conn_list) {
>> +		if (iscsi_conn_get_sid(conn) == sid) {
>> +			found = 1;
>> +			break;
>> +		}
>> +	}
>> +	spin_unlock_irqrestore(&connlock, flags);
>> +
>> +	return found;
>> +}
>> +
>>  static int
>>  iscsi_set_iface_params(struct iscsi_transport *transport,
>>  		       struct iscsi_uevent *ev, uint32_t len)
>> @@ -3524,10 +3542,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>>  		break;
>>  	case ISCSI_UEVENT_DESTROY_SESSION:
>>  		session = iscsi_session_lookup(ev->u.d_session.sid);
>> -		if (session)
>> -			transport->destroy_session(session);
>> -		else
>> +		if (!session)
>>  			err = -EINVAL;
>> +		else if (iscsi_session_has_conns(ev->u.d_session.sid))
>> +			err = -EBUSY;
>> +		else
>> +			transport->destroy_session(session);
>>  		break;
>>  	case ISCSI_UEVENT_UNBIND_SESSION:
>>  		session = iscsi_session_lookup(ev->u.d_session.sid);
>> -- 
>> 2.24.1
> 

Please add my:

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d0278122-729b-b921-1343-40a23fb315f7%40suse.com.
