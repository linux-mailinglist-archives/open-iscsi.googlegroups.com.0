Return-Path: <open-iscsi+bncBD54HHNYIIIK7L6G5YCRUBEBXBSA4@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DD9FFB6A
	for <lists+open-iscsi@lfdr.de>; Sun, 17 Nov 2019 19:55:45 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id c2sf14350283ilj.16
        for <lists+open-iscsi@lfdr.de>; Sun, 17 Nov 2019 10:55:45 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1574016944; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLB4GDcZyNs51IPy38jHEoVbi0hniTRO2tNFmgGM87qaaOhMPkUCMgwsk+YBP78kpA
         UtDezoe2zl2dHrnJCCQonC1ihnfRQ8LfdHjxBy3xVH2IJjhaCgwWOeK6eYIBlKU4bZ3y
         iQ9IFsgh+dcECWYWyESi9WLXqZ1pOOsB8fq3SC7i5jX4YgdwI7u7tlgmiShzz0hw/B8f
         qlHczY0EMFc4v5nD1+oCxbCqEEc6uKmzkzK8LJ5UKJHALHv/FCTyPjKrXMrpbqj2y61Z
         fmqJN8Dr+P57UKPZ3glcJKvgN0caq9mtuw8bNWLd4aEpjL3r2xm1CQHcranOoEKm+jv7
         skIA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=5lgVBi/uQXZtqhHQ4B4g/9rT3OVfZsTTTxGYRlhhBuM=;
        b=My43kvzhPt13Per4mMixHrxTfZFi64zDcjIv1qQ8A0ETzT2JslvR+pDCugSq8cegup
         6OgwIKBsIKKNCORHWKvN4lVYWdPtd9fsE8gU6WVZqnfh3mHaCrDvOqoF4FZrnpb/18Ss
         fruN+HFziPXrKN4ReDgnkb8IUw+h5rS12b98XHyrOg3LWgKkxBHm82gY4sj+F2beb8kD
         Wzd64JSl0PWRDgPTCECSNkQvgZy48jlUKKLM3BHuY3JMz8O+NUnzJlp3qBJNfmtS9jjm
         YhcaVAeSsOXX3mG4PKhOB97rMx35lvY0Y+K1uBQgjzYOJ+iyTY03RkXeEGPxpTKuAgpo
         ZyJA==
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
        bh=5lgVBi/uQXZtqhHQ4B4g/9rT3OVfZsTTTxGYRlhhBuM=;
        b=FxoKYg84PEOX8TROwHsm+++GnYY8phhwSgXhw5+SUUrUOx/Ivcausd/LuDSf9CmA03
         qnGI1emUMlTnTSP+x6tNXfukBV7bhLCYnfaDZj+YQqFEN8FaYSEhVVs8o/c18CypFJon
         +b1znnUiAR3oSQBT/582mhWjZL8cPlhLPC6zG06byv2Ad+sT6rahR+fU12RcnaTVsT1P
         EmULz2WcTKiAW+Ud4Q7xLOdmGZV9XCHWSVVxBuRVt6KBJpcdf7tsBQ/NYxZiywHAC8o1
         LfDKEBOaYCBMibJP2JEvuWHPuemt7+j+7PH9/9tPFrUxoaMO9ib89Zb62+qdaLdHlb/y
         TUQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5lgVBi/uQXZtqhHQ4B4g/9rT3OVfZsTTTxGYRlhhBuM=;
        b=gfMa2oX4h+tbS4vQ22QE5Hkoofc0geEBihc+W7Pwr/79LRm3qhmR5d+XS2W3I7JLp9
         HfCorTEW/t5y1JLdpXzl74bE3RDkX1xjMzpvKlbbepeIZV/3rYfVof2RK6sKKWKWLUak
         N0Rk2zZC/qnjng1rJwi+JV6K1s2bpoIl52v3Me0Tq1YQzCznzNwGlWiUm5NbK8pUCjuc
         2qncjijivwU/zrwXWaWsI52ei5kWKxdtK7NULfhWgi4hDFwtvF1Etj+JaAwJfFsMiri3
         gMy/RzDvvIyi1NEMVePHLVuD3i6YZXYz6WVJCA+CHqNxiteN9Zqyq0Ln47//BsjPJIg/
         YNRg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWmTw9wUIe45NiXk0M4/JMrDcbxnleU6m8rc9wGrzvj2tLKQs7M
	anBxmRtKp4eMqOaKEfp/YD8=
X-Google-Smtp-Source: APXvYqz1NH2WMfFwZuRannGFStnnRvP3AqnZqeAh1H7RSZtH63EYu4qNgeApb1aPmUv02YMPSUlFlQ==
X-Received: by 2002:a02:5103:: with SMTP id s3mr9992040jaa.45.1574016943784;
        Sun, 17 Nov 2019 10:55:43 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a02:4443:: with SMTP id o64ls1118437jaa.13.gmail; Sun, 17
 Nov 2019 10:55:43 -0800 (PST)
X-Received: by 2002:a02:bb0b:: with SMTP id y11mr10264757jan.31.1574016942924;
        Sun, 17 Nov 2019 10:55:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574016942; cv=pass;
        d=google.com; s=arc-20160816;
        b=JIuND25FHXP6gHGbT0HL7Q7tuRjpekwKgjMNdDzof0PlvUbyOwkKuorDbyU+1W9mbR
         DUS85fiRH2xaaWsvEF+7CbapU1K3QI3DsY/kZhZS5LAR4SUNugxM0IF7cqqrf9TkzMmg
         hD9Hf7YvGY/6Ol2L7Wz27GZxW61+11kuS5xbkGE92sC1YW+GLkse+gDBtGGGUpVQ9b8+
         Hvc48J+49P1pcJHiJ4PwJ8/aaqlCj9ZY+9gqCi4R1dGB8vj82CHeWFyQuTF8i4NSsfhT
         7GBEMYnH2AgidR2uHdUTW0pfR/CPsknggL+V7yWGP9kRb+HcFReIkZ9yJ+liXyPpXfvJ
         0DqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=YQ0nFcfL5b9IPoYL6eKkFNdhhPISTxaiVJ0I+rls2T8=;
        b=JrHR+qII73wa9TIF1rfOHrneH+hxMxJN8uruqa7UtG3vCnFv9S+klYekrNZ+OhpY3J
         OwBabhqoaNm2NP358R7MEYgEZft8/5OFccpKwAX8FHuySBMIr5Wc5L59Yc4sDR4/aGqc
         VY9teMMkGFAgwiCzDg0PtnaG0qXTT7tMfVQkm6+Uajl+zlu8FHVqED/spW0xQ39yfdk+
         DEU1Yb4TmcGSl6BGLEIZQ9CN2g8oLGjvmYNzglz9hOVPkC2tqZReJwCuKrlpBQenW4Ir
         3T7JXYzeULCkxNpz46X/Qz78xvAwzlIdZ37Tf8Aixt0FvMkhIyUhewvoR1/MqMeL3Dhl
         9U5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.68 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m9a0003g.houston.softwaregrp.com (m9a0003g.houston.softwaregrp.com. [15.124.64.68])
        by gmr-mx.google.com with ESMTPS id b74si822285ilb.1.2019.11.17.10.55.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Nov 2019 10:55:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.68 as permitted sender) client-ip=15.124.64.68;
Received: FROM m9a0003g.houston.softwaregrp.com (15.121.0.190) BY m9a0003g.houston.softwaregrp.com WITH ESMTP;
 Sun, 17 Nov 2019 18:54:57 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M9W0067.microfocus.com (2002:f79:be::f79:be) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Sun, 17 Nov 2019 18:54:40 +0000
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (15.124.8.10) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Sun, 17 Nov 2019 18:54:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QE0VKv5s4ZQmckCsF9e3AAfbrYPWpye2x9hzLFeKpR1PT4BImDGEgA5mYjD20C4ZSJ+R1VfIwRLGbGxIvqixQFXwkYGT3H22//03VuhSTFTAt/8Rjer4XF8AkY0rKcVA7ugamOrL0DsZjwQJvK2cfosDJGE8xAZlV8zyTPqJTeJY3rk42b5mXfvwrhDIMp/WLO7dJLMj9Q8grvdxRaPtfU6RyUgqMgcSrTiNFOb4jZSTsNtZsds6xfM31L3YnSlOS+NtaLxxpUK/90wV7YHUnU/hAzxpAIzgLrhclljvc2Zy/OLFDuZD04tK/cJ49EESg3L4FDcfg0NEzNS2XOEpsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YQ0nFcfL5b9IPoYL6eKkFNdhhPISTxaiVJ0I+rls2T8=;
 b=DMxXJL1KbSl3WQAuJIIS132j18PcN0ClxKn7hX7hmQ1KkBj8QzUJdm+sJ8LHwg9dYey0GSb3AAAqOlfAnh0/m8NQVZnsWaIWTy+bIcFEr5fvckwVaaq6hxX/h5GjfQ8pOHlo0Aa42af/lpOnZKrVjexkPgUTxbqwr1Ey6M47tI9Gmi+1Y8Fk3izVUgzhCDSPAlpDpr+ZNCBfpR94G1RJsW4BLUPjhxFyMiunwdVYVx9Av1iX6mbPcWW2mCgxjUORD9O41vjr49w4uVIvbOqYUO5SLWIMQJubC7ApcSQdHb9y4kDqs1RwOGcfidNi6zt78PL0+izaGbbt8pUA9FraxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from MN2PR18MB3278.namprd18.prod.outlook.com (10.255.237.204) by
 MN2PR18MB2383.namprd18.prod.outlook.com (20.179.81.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.30; Sun, 17 Nov 2019 18:54:38 +0000
Received: from MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45]) by MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45%3]) with mapi id 15.20.2451.029; Sun, 17 Nov 2019
 18:54:38 +0000
From: Lee Duncan <LDuncan@suse.com>
To: Gabriel Krisman Bertazi <krisman@collabora.com>
CC: "cleech@redhat.com" <cleech@redhat.com>, "jejb@linux.ibm.com"
	<jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, Anatol Pomazau <anatol@google.com>,
	"kernel@collabora.com" <kernel@collabora.com>, Frank Mayhar
	<fmayhar@google.com>, Bharath Ravi <rbharath@google.com>, Khazhimsel Kumykov
	<khazhy@google.com>
Subject: Re: [PATCH] iscsi: Don't send data to unbinded connection
Thread-Topic: [PATCH] iscsi: Don't send data to unbinded connection
Thread-Index: AQHVnBerZdYHAygAfUOIoUR2fkCTF6ePuLKA
Date: Sun, 17 Nov 2019 18:54:38 +0000
Message-ID: <2b4a232e-add1-38a6-e86d-0192737f2fd9@suse.com>
References: <20191116004735.16860-1-krisman@collabora.com>
In-Reply-To: <20191116004735.16860-1-krisman@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0269.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::17) To MN2PR18MB3278.namprd18.prod.outlook.com
 (2603:10b6:208:168::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2397a064-edba-43c9-cb12-08d76b8f98a9
x-ms-traffictypediagnostic: MN2PR18MB2383:
x-microsoft-antispam-prvs: <MN2PR18MB2383060C3A00D0375ED9A6B7DA720@MN2PR18MB2383.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02243C58C6
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(199004)(189003)(51234002)(99286004)(11346002)(6486002)(81156014)(81166006)(8676002)(7416002)(45080400002)(5660300002)(31686004)(36756003)(8936002)(80792005)(6116002)(14454004)(478600001)(7736002)(66446008)(66946007)(66476007)(66556008)(64756008)(26005)(102836004)(53546011)(6506007)(386003)(2906002)(186003)(54906003)(256004)(25786009)(14444005)(76176011)(52116002)(6916009)(316002)(3846002)(305945005)(2616005)(446003)(476003)(486006)(71200400001)(66066001)(71190400001)(86362001)(6512007)(4326008)(229853002)(31696002)(6436002)(6246003);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR18MB2383;H:MN2PR18MB3278.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8BFexvT8mnz5kw7IGDWWkE9GxtuGEm6xA2R4g6ohekcc4wX3uPYeIBbzenJEYEINb01DO8cZOhaYaF3Sb/8c/zWZZastgP3rrjsRf2FI2TR/8WD6d+mRqH1ajC5rPnksA2CgykD4pgMy+TupNMq8dlUdNhbCVmjQTu7HJwE0JdsBl6Oh4efDqPdKhciMr8zNt4PpAKJ5sx+eqg4rNwgOc918ZhXunNNKmk6xIiz6uEFoQtHnX+Vqp32EO15wcue7B9gOOfEbLqZtsnraMdaLhw51L/b1upjVkgbsTi59a2zxGtX/It77CPT9Vmf4l5GxzxcjwgKZeaaS4YEubAYc/McBZdzTnr7B3H9QV+bMvy2JpuL6tXpvuvN/Pmx/Whgcs8H6SOhc0Z+HnrLxe0KST0LL96wQl7o70Kt+1A6J7Mtsq4nDkIzR7PP84b5UYUGMVSRnFI5rf2vCl2IOS9jJaQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <985E7C9926409C4AA0E5DAAAF827A6BF@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2397a064-edba-43c9-cb12-08d76b8f98a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2019 18:54:38.4402
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RJwQogvt1BWILQy2+ozvwNLKlRLxRZOurWAhM4BvNSaaWJGU4oy8DMcHGw2fekpqFX0/BllSMJqq7HJfr0nGoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2383
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

On 11/15/19 4:47 PM, Gabriel Krisman Bertazi wrote:
> From: Anatol Pomazau <anatol@google.com>
> 
> If a faulty initiator fails to bind the socket to the iSCSI connection
> before emitting a command, for instance, a subsequent send_pdu, it will
> crash the kernel due to a null pointer dereference in sock_sendmsg(), as
> shown in the log below.  This make sure the bind succeeded before trying
> to use the socket.
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000018
>  #PF: supervisor read access in kernel mode
>  #PF: error_code(0x0000) - not-present page
> PGD 0 P4D 0
> Oops: 0000 [#1] SMP PTI
> CPU: 3 PID: 7 Comm: kworker/u8:0 Not tainted 5.4.0-rc2.iscsi+ #13
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
> [   24.158246] Workqueue: iscsi_q_0 iscsi_xmitworker
> [   24.158883] RIP: 0010:apparmor_socket_sendmsg+0x5/0x20
> [...]
> [   24.161739] RSP: 0018:ffffab6440043ca0 EFLAGS: 00010282
> [   24.162400] RAX: ffffffff891c1c00 RBX: ffffffff89d53968 RCX: 0000000000000001
> [   24.163253] RDX: 0000000000000030 RSI: ffffab6440043d00 RDI: 0000000000000000
> [   24.164104] RBP: 0000000000000030 R08: 0000000000000030 R09: 0000000000000030
> [   24.165166] R10: ffffffff893e66a0 R11: 0000000000000018 R12: ffffab6440043d00
> [   24.166038] R13: 0000000000000000 R14: 0000000000000000 R15: ffff9d5575a62e90
> [   24.166919] FS:  0000000000000000(0000) GS:ffff9d557db80000(0000) knlGS:0000000000000000
> [   24.167890] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   24.168587] CR2: 0000000000000018 CR3: 000000007a838000 CR4: 00000000000006e0
> [   24.169451] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   24.170320] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   24.171214] Call Trace:
> [   24.171537]  security_socket_sendmsg+0x3a/0x50
> [   24.172079]  sock_sendmsg+0x16/0x60
> [   24.172506]  iscsi_sw_tcp_xmit_segment+0x77/0x120
> [   24.173076]  iscsi_sw_tcp_pdu_xmit+0x58/0x170
> [   24.173604]  ? iscsi_dbg_trace+0x63/0x80
> [   24.174087]  iscsi_tcp_task_xmit+0x101/0x280
> [   24.174666]  iscsi_xmit_task+0x83/0x110
> [   24.175206]  iscsi_xmitworker+0x57/0x380
> [   24.175757]  ? __schedule+0x2a2/0x700
> [   24.176273]  process_one_work+0x1b5/0x360
> [   24.176837]  worker_thread+0x50/0x3c0
> [   24.177353]  kthread+0xf9/0x130
> [   24.177799]  ? process_one_work+0x360/0x360
> [   24.178401]  ? kthread_park+0x90/0x90
> [   24.178915]  ret_from_fork+0x35/0x40
> [   24.179421] Modules linked in:
> [   24.179856] CR2: 0000000000000018
> [   24.180327] ---[ end trace b4b7674b6df5f480 ]---
> 
> Co-developed-by: Frank Mayhar <fmayhar@google.com>
> Signed-off-by: Frank Mayhar <fmayhar@google.com>
> Co-developed-by: Bharath Ravi <rbharath@google.com>
> Signed-off-by: Bharath Ravi <rbharath@google.com>
> Co-developed-by: Khazhimsel Kumykov <khazhy@google.com>
> Signed-off-by: Khazhimsel Kumykov <khazhy@google.com>
> Signed-off-by: Anatol Pomazau <anatol@google.com>
> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> ---
>  drivers/scsi/iscsi_tcp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index cea7fda1dd23..b5dd1caae5e9 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -369,8 +369,16 @@ static int iscsi_sw_tcp_pdu_xmit(struct iscsi_task *task)
>  {
>  	struct iscsi_conn *conn = task->conn;
>  	unsigned int noreclaim_flag;
> +	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
> +	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
>  	int rc = 0;
>  
> +	if (!tcp_sw_conn->sock) {
> +		iscsi_conn_printk(KERN_ERR, conn,
> +				  "Transport not bound to socket!\n");
> +		return -EINVAL;
> +	}
> +
>  	noreclaim_flag = memalloc_noreclaim_save();
>  
>  	while (iscsi_sw_tcp_xmit_qlen(conn)) {
> 

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2b4a232e-add1-38a6-e86d-0192737f2fd9%40suse.com.
