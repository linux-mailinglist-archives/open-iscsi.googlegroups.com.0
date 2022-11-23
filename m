Return-Path: <open-iscsi+bncBD54HHNYIIIKVHPZTMDBUBCIQ3DPE@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B2D636625
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 17:47:41 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id l18-20020a056402255200b004633509768bsf10648267edb.12
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 08:47:41 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669222060; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tu7qmpRiuwruo5qeTrDoGYxbzFsnw/3mjU2i8ni41OfHimaEWB2j5rjTOs4vK0ZvjW
         vwL93XTxX9MoMjeF/dxY/OepdLWNM7zGFcZ6LWXql5xZD5zPO+pbzDEjmKUA65PkigUN
         Qje21AQ/3+GuIIV/zkPhqd/iAFEXB0JGXf3CgyCJ7a0rvakT9hSCih7A32DThh6PA06w
         3ayQdBJnRj2h/NwhdRuVshjPD+C+PZUSMr7oPahShzYGJMoozZ0gIcbfvB7XQWNNS5hk
         Spxx7ndESRjMzQSAf4julT1UzYITSnh7OqiKQqO+9rDrIkGPfBz6U6VJ5f4TSBCnaggS
         EadA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:date:message-id:dkim-signature;
        bh=apHZ6tzl58wqyk0Enck/7wMxokxOFgYypO21MZW3LPA=;
        b=eH8Q1h4oyZxbNdYJu5y0e2DcO1Kxg1afoeTkUqQIPTCgbJb+9DonZ2P29k8TILqiei
         wTUCQvZPfTkI4jf69RQRKTcPOgF/KY64syL35cAcCvhp83IAd1eovHwJHg2DyATw3Zh9
         bBZTGWIzbkUGvzzTxwY0KpY4NO3tyXh911sXS2Da9rcGH3Dz9tcAaAULFpbRWqw2QHaF
         QYx8N6+VUoQ/UAUeEZWlIhqJszlqkAPLheDZ3n7ZuFuc19TzeL9BHCPPCTyA+EyFhLh5
         bBeRDRS+J0fsVqmeDEFaRhTTSNNkco22hOGBdUD+axawz7KainVmR7CtRYdcjCQcntLK
         3IAg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=sdNaPWBz;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:7d00::60e as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=apHZ6tzl58wqyk0Enck/7wMxokxOFgYypO21MZW3LPA=;
        b=YbAQcA14EEJ1kjuSQdr5RhSDrOhKhTKhnCn9euynt+aPwIUQmBlqiHcJGFEroVPKMr
         EUQIzaxyMhI86/GW8OyD8ICZIJt4MrdLpG4fM+TSDma0nIfZGqliJqpQKQ4w/Z3C9lUs
         SzcsgixW1MOSSbI0SJgl9ENVhD7K04CUlv0t9fuUSvTvZPkUEuO/QNuJQ/2Bi9T8ztPr
         Qpk1XdwU54t/AXXTMGpoIJEPvAx53X87p4BLZkczXVh/XqGoFh9usb9Juk5240GTrvpO
         4p42BGwZi8nEP66BRrUvnVSjSA/M+c3bDcI+Q+2waSHm89u1koaNRwiKttL0hm0yePsK
         k9uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=apHZ6tzl58wqyk0Enck/7wMxokxOFgYypO21MZW3LPA=;
        b=xTTU7N4Vh8fTPXvyLFfb0FzCdN1r5mNL/yGivS3Eyo9ppZ8Ds0mMDbmVqdp4G5NCUh
         23IfThpNNQ1rjrme4GiaiIWoavkYKv0Zz6Q88CwbcdcIJQpmpwHnq/ynYB9efr9oTRHH
         SAiwkaJhv/FyEq2qkrb4wK8dfKCcTecWDGQNxKVhuhxBZ5dXmBlusf0WFL9pjDBRP3Zc
         shAfkeWZPqXtzfF6jgdcKDBRpyfFpA1NEkAGEnPzOk8DKzFlgdfXvyl7NrVoNIClVwpv
         GeAo9fEZj2XNTMFKjL7kH4OuvMJu89evQMh6nq99ys77+jDR1UwXFm0oScgnYY85s2fl
         dm7w==
X-Gm-Message-State: ANoB5pl74cMzcxEKnRh4KZlvmUB0w4Y4jTIiomLnf15qvYAMkr+//3k1
	BkiS161O1R4uEB1LXquwKyw=
X-Google-Smtp-Source: AA0mqf5XOj1xs8A8KLlqf26SE+tMREiEvfA28mXE9HO9ZQphMhpKJe7+ndmypb/Jxx5MqN6+Ydeyeg==
X-Received: by 2002:a17:906:6ce:b0:78e:11ea:852e with SMTP id v14-20020a17090606ce00b0078e11ea852emr9972190ejb.183.1669222060415;
        Wed, 23 Nov 2022 08:47:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:7e1a:b0:7ad:934f:14b9 with SMTP id
 e26-20020a1709067e1a00b007ad934f14b9ls9863851ejr.9.-pod-prod-gmail; Wed, 23
 Nov 2022 08:47:37 -0800 (PST)
X-Received: by 2002:a17:906:6d8e:b0:7ad:a2e9:a48c with SMTP id h14-20020a1709066d8e00b007ada2e9a48cmr12877039ejt.77.1669222057616;
        Wed, 23 Nov 2022 08:47:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669222057; cv=pass;
        d=google.com; s=arc-20160816;
        b=JovXpMQfREdNExedJkJO5VYCxWldSnMa9RZ75nELwxADZofKexVqIrnn4UidWxYtQz
         VuwUFEkhlf49sRjljWbjKba0yWob24HUnPoVKR68E9zQlAnYDwjNqBfyBKvllcLsLKx9
         ogWJx3l8sE0QqQwAORVQSGnt3CD+eOPmij/IkyhQ4mLnG+PqQNL85wKmfkUKWYGdFVF3
         JCxjDvxZwRzKFKICT2f0JlHJU8HRu5EbuUpGHyy8Mrwn2ExzMenTIrkhd16rZKCCSmA6
         5hX9SQF0B2QtLGjQqKXNhu6c2L1HAqO2oYm/5XUEjeZGx9r+I4TRKoKlPXcJTI6PM30Q
         B6Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=T8RtdiLgsFVmJWJGZa1D3Gx4oywDP3r8yvkBVtR50bo=;
        b=PuV2FShT5NNOVT4TNP+SfjiG36vOXhXEfvZc0+aCmubiCBZxPaL6+CxJBvm28UXjLK
         KNI+pAazkGzcyYZF4YRHWveDYx09zcDvT2NeVTVeUQ+x18rVQz2YI5+JypTx1erd4nrG
         gXymyYnz1x5fTm+4MvSw6tDgjL7b+HXH1RbGTVbE/OO90v4Fw4WMlDhJ6ZcUkgrVauf1
         MLHjIl6wqlYGFkcSymZjDXmFZCkBHyh+ZlvXdwWzPghAE1V3jax38K0z3Zkd3AbC016p
         /uIKJFeh8N+6k5CVTUsVzAo26Qe82RIoxAi7z7aLm//hz0cfwrg+fr4eMHxq9fWzRBNl
         9/IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=sdNaPWBz;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:7d00::60e as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2060e.outbound.protection.outlook.com. [2a01:111:f400:7d00::60e])
        by gmr-mx.google.com with ESMTPS id dy17-20020a05640231f100b004621a13c733si610665edb.1.2022.11.23.08.47.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 08:47:37 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:7d00::60e as permitted sender) client-ip=2a01:111:f400:7d00::60e;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/N2dkWCH23xhSj1cFv5MgoMmnEgdF+fzcRWnoO6nK5SKaFwzZ/TTWLvSOM7kUxgfTz2yaaImVtNZFD4uhU2QMzJNsxJ9P1YQ1CYK6EQ5fXoy+N1FYoxwd4eiy7kpFaDtTJePMVOyqvLogP+XFIiNGMw0KfcwmGbIDrbOKaSxn58Zc1QzGHJPcFFBtQ5X+OOywA8R4pfc/NHBkIfn/UejBWnO6gsXdZktMm/pNXiQ+LZV6Rpy20cJibV8J7liM/mzcvkMo5fndvaBDJBBiHAZoPsacFrPnHutUf9HBcDyln+GLWJtDUymdO0Uf45n947J6kiZAQlAyPAofv1pp3z6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T8RtdiLgsFVmJWJGZa1D3Gx4oywDP3r8yvkBVtR50bo=;
 b=FNhVx93myyye5yJV6RQNHPcuBVidgVU5Th3x3Mf5GYoQ/ehp2piwM2OdQOkDHTpjml1IHd+Kb9rWMVv0blrFqFKKZ8+XDiAh2rmxWctH4xRF0Zb9jrAhvojDyz/jUphAc9YC9qgsJuPqWxhiMH2GePMIseGceGDC/P4wqO/aiIYFYeYgrWt9eXpXrkzDUz3QKKO84CzylvtCJ3NdJRjX7j9RgmuwjXS4+WrEx/StH3I/Hce79QWyak1Y8OUIM0p02IJQfTghBFB84oa75GjepnXqf5vMk5/9yasYeOG/ESwytjZ9PfuIoSB3vs+gWTE22rhKuEqHwHre4bd1heuLFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AS8PR04MB8417.eurprd04.prod.outlook.com (2603:10a6:20b:3f9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Wed, 23 Nov
 2022 16:47:36 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9%5]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 16:47:36 +0000
Message-ID: <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
Date: Wed, 23 Nov 2022 08:47:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, liuzhiqiang26@huawei.com,
 linfeilong@huawei.com
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR2P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::6) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM5PR04MB3089:EE_|AS8PR04MB8417:EE_
X-MS-Office365-Filtering-Correlation-Id: 248a2808-95d4-4a45-b1f7-08dacd726cd4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4C5eqpWU5TWBIbv3lgwthoYcg9e/AKdxCLpbtFP4+dCdWBouR9H136P8mdTyyFbGOay8zHqTQZ/tpN9JQNnkHYrzIaCFK52Gq/cvNrZzEJGeURHEbSSo4dUL+Nfw60aMNqL0ZfbcUd6yI6bQUI5cjCXs55MNxVwnxxiDB+GhAPdS2aSWNfBxCBLgCmGE9tKrarPyPXSNd9pXxRinc7U27MQDzVhS26zWOZLQjtFG6NovZwqGSHtjCb72JkNlNFOEaCc6BXKAY/WbgLoVu7vKHAC1XxKt0nSCAljjsplvJ0QN7lZUW8PIhRsmefAm3sNFcklbijyKt4EzjWK3J6XEPhQ+8sgMu+rBxOTUSRyDpyylLhhf7uveNhnacT5yw1kOon+0ZkOz/UByg8o99uffij+zH5gjBlkQFA3i1yTk3xUOJ1iIJxrE+WYug3gq3uKrYOFui1XOXFQNLA9x36vvu2jF7w+9wT271/cD4nlQyk0plnqUrSm7MMvVp0xuROjFJO7KKm+dnzpG+ika5vHB2nIsjD48zp5CXjAGn7HHYamQoe8FBlgI/neZowOc1clY3xVhB8UrDAE0a9DjRp2N0b2Qw2PgmGKk/gn+uMJ1dCDEJNAZ9WQVDOLgDphyCkBrcV5ZlOUSothhKb3eWJZ0Kn2ueW7sMBAwTLVfychSn0dDBXi6or/jep90+WqqBlPigYfzIGgJbKr/F6e5ttWFKOXvID8DQaEJSLopps9zpYs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199015)(31686004)(6666004)(6486002)(478600001)(2906002)(6512007)(66476007)(66556008)(2616005)(41300700001)(8676002)(53546011)(186003)(316002)(36756003)(110136005)(6506007)(7416002)(4326008)(5660300002)(83380400001)(31696002)(86362001)(38100700002)(26005)(8936002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmRJQ2FMcTJFV1pScjFRNDMySE1iMDFaWThCUEtOZHFxb2ZIMXBpQVlWeDU1?=
 =?utf-8?B?aUF5TzRyaXg4Ukt0alZINWp6dFN0MTZWMGRRYXVSZ09OWmtKenZLZDNubTJn?=
 =?utf-8?B?b2JCeXNRb2NEKzEzMzdBbkVYS1hwOUxXSzNlQUVpM0NKT3FoWE5VeUFHWURp?=
 =?utf-8?B?OXNnSHZFeUxRWW42NWhBUDVRdHYzdldkWlZEQmdOWWJLSXJ1ZW1wdS8wemh0?=
 =?utf-8?B?R0Zod1JsS3lZTUpaWi81cjhGeDE2bVoyTjdDRnFKaFJZbkhFL3llNk5vRVcy?=
 =?utf-8?B?N2VZUnBxcTZ0VjFOa21JZFYvdjM2Vm1YSG45bERoSkp4ZXBvZjdDMVk2WWxm?=
 =?utf-8?B?T21pMEQxWFlYN0grY2t3MmtPUlFMWk4rV2ZDeWdJQ283VWJUOVF2ZDVjc0x3?=
 =?utf-8?B?MUp3UndEL1Z4dVZhUi9MVGlwdHN5VHRDVURET3F3SDBYYmdnMmRPa2pLVkdR?=
 =?utf-8?B?WGZNOTZveGFPZ0txcDBQUm8yVXh0a2w4RXpvNU5maENTU3RBWUhLdVFENkM4?=
 =?utf-8?B?dkhiQ1ZXdGk0aDcyRWJxMWRpZVU3R1hSUWFGRkJnR3htcFNKWm15aXFHMnRE?=
 =?utf-8?B?SW0xYnV5Tm9RZm9lQm1nVWJBbldKMWsyUmZBZlVLeHQ5YUUwdGVLSTBobi9z?=
 =?utf-8?B?K1ozYW40ZkVoVWNDTFhRN3ZvOTg2QmxmMkUvYTdUUThjVkNFWi9RSDFBRVFQ?=
 =?utf-8?B?ejhJd0dwanovcFhhRzNSSWYwUmFwNmlKd2tmZkZMamtXdjFjenZSYjV2TkU2?=
 =?utf-8?B?ZllZUlFJMEhDQ3VKbkgwQ2RVSE01TGFKYUU0U2Z5aEhJdjJoNzZ6Z1N6enYz?=
 =?utf-8?B?ZGZzNzJDNk91VHlidEhZVk1sNEc1YWZRUE43bHZibEhWWk5DcUZKclVZN2pE?=
 =?utf-8?B?NzJITFI2aHFlYXhodmNpVDR0aG1Qb2did2FDRHY0TEt5aXFIQnBJSmNBSHRh?=
 =?utf-8?B?N1pySHVrTkEwZ1BEa0o0Y1B2QnFNRUVUd2xIbVVGSkgyM1Y5bHMyOS84T1U2?=
 =?utf-8?B?dEpjU2poYVlPSzZ2akVYQ1NqVWwxaFVScjcrbUNneVRGcmVsTE9Kajcyek5l?=
 =?utf-8?B?WVVtZmNLU0ZwOVM5MWVsd2JQNlRpeUU5b1QwOFVaa3pDTjA2ckwvYkdWOEpL?=
 =?utf-8?B?SURYNnF2ZmJRR0tYU0lkUW1SaENFNmJONXFNUEhNeit0YkZ2MUhyeUZWamNY?=
 =?utf-8?B?T3FsSzVPMXBGUE9xY3E5eFdmVndiSi92dWhWVXB0SmJLRlBxK3NCN2hPSDJB?=
 =?utf-8?B?Z0h5K0Q5WEM1VlNmWnNkZnk5OGVRUE81M1EyK2t4aWdyWk1iNHhJMUI2UTJM?=
 =?utf-8?B?bFRld0FKYUtTclJEM3N6Y2FScGFuTkRVMys4YlRhTkZKZVRleWxPaHc4NW5p?=
 =?utf-8?B?V1ppYkhRbkY5eWNkMjhvU0loczN2KzdnVzZkN3E3eURZVnlYNmRDaGlQYWdJ?=
 =?utf-8?B?UmpIMFhLNmd4MTF3L1hVdEttVTRyQWh2Sk82cEFKMXZvL2NWMFk4UkRKcEtv?=
 =?utf-8?B?SWJFVHJtUElDVHM1Nkp0TkkySktoTldOamFIUTVMb2RIWkpjWm80OWJWUnRa?=
 =?utf-8?B?WFVpVmZ6Uy9ML1czTkVHek9uVUpmVitzMlJZQjVMb2FtN0NhRDNPQk5kSmFu?=
 =?utf-8?B?eGFpMGp1Y1d6WVF6b3VST0ZrUFhSME9zRnhMUyt6OC9CbURIUG4yRVFvTDFX?=
 =?utf-8?B?TnVXMGFGaGNaMzR3VGUzbWZ1Tmt6QnVDRGhweXdpSEN0b1haa1NvUi85SnhE?=
 =?utf-8?B?VWlxM09icnhOcEpWWEpXcy95VHd5Z052N2ZPTThTMXA3V2ZwV0czUURHalBR?=
 =?utf-8?B?eUp1ZGtwd0ROai81MFM4ZXM2N2pIMkFYL015TkdGOTQ0WmtBMWFHbFMvNG4x?=
 =?utf-8?B?NnA3STQzbmhTQnZqb2d6VzU1a242Mll0NlBFOUNGMnNicHNkMGl2aGQyNFFS?=
 =?utf-8?B?dzRRMnpIcUF5SHlVMDdJeHozeGlxMTMrVXA0TmdIaVRGK0dQNEdYNVc0RG11?=
 =?utf-8?B?ckhnNktuSnBMZzhNcVVuN0NhQWFJLzhQZDErYjllSWRSTkhmSFdDTmlpb25K?=
 =?utf-8?B?MlA3Wm9iNGw4WlB0OGlCT1ZsUzRhZm1nV3FtbmhPNUJvMVNMdmE0Yk1OTmlj?=
 =?utf-8?Q?ihMWTqx1xt9ITW1N4eZORx3qf?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 248a2808-95d4-4a45-b1f7-08dacd726cd4
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 16:47:36.3440
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dZlfF4HHL114aUyxla/DEUjxJ87usxV0Op15Mjox0qBNK7on8AGmmqBUolQrsvzirNDvb39zL3TL7X6elyKNig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8417
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b=sdNaPWBz;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 2a01:111:f400:7d00::60e as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Lee Duncan <lduncan@suse.com>
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

On 11/22/22 20:41, Wenchao Hao wrote:
> On 2022/11/23 4:00, Lee Duncan wrote:
>> On 11/22/22 13:30, Wenchao Hao wrote:
>>> There are 3 iscsi session's startup mode which are onboot, manual and
>>> automatic. We can boot from iSCSI disks with help of dracut's service
>>> in initrd, which would set node's startup mode to onboot, then create
>>> iSCSI sessions.
>>>
>>> While the configure of onboot mode is recorded in file of initrd stage
>>> and would be lost when switch to rootfs. Even if we update the startup
>>> mode to onboot by hand after switch to rootfs, it is possible that the
>>> configure would be covered by another discovery command.
>>>
>>> root would be mounted on iSCSI disks when boot from iSCSI disks, if the
>>> sessions is logged out, the related disks would be removed, which would
>>> cause the whole system halt.
>>>
>>> So we need record session's start up mode in kernel and check this
>>> mode before logout this session.
>>>
>>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>>> ---
>>>  =C2=A0 drivers/infiniband/ulp/iser/iscsi_iser.c | 1 +
>>>  =C2=A0 drivers/scsi/be2iscsi/be_iscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 1 +
>>>  =C2=A0 drivers/scsi/bnx2i/bnx2i_iscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 1 +
>>>  =C2=A0 drivers/scsi/cxgbi/libcxgbi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>>>  =C2=A0 drivers/scsi/iscsi_tcp.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>>>  =C2=A0 drivers/scsi/libiscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 5 +++++
>>>  =C2=A0 drivers/scsi/qedi/qedi_iscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>>>  =C2=A0 drivers/scsi/qla4xxx/ql4_os.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>>>  =C2=A0 drivers/scsi/scsi_transport_iscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | 4 ++++
>>>  =C2=A0 include/scsi/iscsi_if.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>>>  =C2=A0 include/scsi/libiscsi.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>>>  =C2=A0 11 files changed, 18 insertions(+)
>>>
>>> diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infinib=
and/ulp/iser/iscsi_iser.c
>>> index 620ae5b2d80d..778c023673ea 100644
>>> --- a/drivers/infiniband/ulp/iser/iscsi_iser.c
>>> +++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
>>> @@ -947,6 +947,7 @@ static umode_t iser_attr_is_visible(int param_type,=
 int param)
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_IFACE_NAME:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_INITIATOR_NAME:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_DISCOVERY_SESS:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_START=
UP:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return S_IRUGO;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return 0;
>>> diff --git a/drivers/scsi/be2iscsi/be_iscsi.c b/drivers/scsi/be2iscsi/b=
e_iscsi.c
>>> index 8aeaddc93b16..a21a4d9ab8b8 100644
>>> --- a/drivers/scsi/be2iscsi/be_iscsi.c
>>> +++ b/drivers/scsi/be2iscsi/be_iscsi.c
>>> @@ -1401,6 +1401,7 @@ umode_t beiscsi_attr_is_visible(int param_type, i=
nt param)
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_LU_RESET_TMO:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_IFACE_NAME:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_INITIATOR_NAME:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_START=
UP:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return S_IRUGO;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return 0;
>>> diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2=
i_iscsi.c
>>> index a3c800e04a2e..d1fb06d8a92e 100644
>>> --- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
>>> +++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
>>> @@ -2237,6 +2237,7 @@ static umode_t bnx2i_attr_is_visible(int param_ty=
pe, int param)
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_BOOT_ROOT:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_BOOT_NIC:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_BOOT_TARGET:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_START=
UP:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return S_IRUGO;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return 0;
>>> diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgb=
i.c
>>> index af281e271f88..111b2ac78964 100644
>>> --- a/drivers/scsi/cxgbi/libcxgbi.c
>>> +++ b/drivers/scsi/cxgbi/libcxgbi.c
>>> @@ -3063,6 +3063,7 @@ umode_t cxgbi_attr_is_visible(int param_type, int=
 param)
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_TGT_RESET_TMO:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_IFACE_NAME:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_INITIATOR_NAME:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_START=
UP:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return S_IRUGO;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return 0;
>>> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
>>> index 5fb1f364e815..47a73fb3e4b0 100644
>>> --- a/drivers/scsi/iscsi_tcp.c
>>> +++ b/drivers/scsi/iscsi_tcp.c
>>> @@ -1036,6 +1036,7 @@ static umode_t iscsi_sw_tcp_attr_is_visible(int p=
aram_type, int param)
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_TGT_RESET_TMO:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_IFACE_NAME:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_INITIATOR_NAME:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_START=
UP:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return S_IRUGO;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return 0;
>>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
>>> index d95f4bcdeb2e..1f2b0a9a029e 100644
>>> --- a/drivers/scsi/libiscsi.c
>>> +++ b/drivers/scsi/libiscsi.c
>>> @@ -3576,6 +3576,8 @@ int iscsi_set_param(struct iscsi_cls_conn *cls_co=
nn,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_LOCAL_IPADDR:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return iscsi_sw=
itch_str_param(&conn->local_ipaddr, buf);
>>> +=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTUP:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return iscsi_switch_str_par=
am(&session->node_startup, buf);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -ENOSYS;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>>> @@ -3712,6 +3714,9 @@ int iscsi_session_get_param(struct iscsi_cls_sess=
ion *cls_session,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 len =3D sysfs_emit(buf, "\n");
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>>> +=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTUP:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 len =3D sysfs_emit(buf, "%s=
\n", session->node_startup);
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -ENOSYS;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>>> diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_is=
csi.c
>>> index 31ec429104e2..b947a5bca380 100644
>>> --- a/drivers/scsi/qedi/qedi_iscsi.c
>>> +++ b/drivers/scsi/qedi/qedi_iscsi.c
>>> @@ -1437,6 +1437,7 @@ static umode_t qedi_attr_is_visible(int param_typ=
e, int param)
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_BOOT_ROOT:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_BOOT_NIC:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_BOOT_TARGET:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_START=
UP:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return 0444;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return 0;
>>> diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_o=
s.c
>>> index 9e849f6b0d0f..1cb7c6dbe9d3 100644
>>> --- a/drivers/scsi/qla4xxx/ql4_os.c
>>> +++ b/drivers/scsi/qla4xxx/ql4_os.c
>>> @@ -468,6 +468,7 @@ static umode_t qla4_attr_is_visible(int param_type,=
 int param)
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_DISCOVERY_PARENT_IDX:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_DISCOVERY_PARENT_TYPE:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARA=
M_LOCAL_IPADDR:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_START=
UP:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return S_IRUGO;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return 0;
>>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tr=
ansport_iscsi.c
>>> index c3fe5ecfee59..39c14d2a8aad 100644
>>> --- a/drivers/scsi/scsi_transport_iscsi.c
>>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>>> @@ -4367,6 +4367,7 @@ iscsi_session_attr(tsid, ISCSI_PARAM_TSID, 0);
>>>  =C2=A0 iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_T=
MO, 0);
>>>  =C2=A0 iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_=
PARENT_IDX, 0);
>>>  =C2=A0 iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY=
_PARENT_TYPE, 0);
>>> +iscsi_session_attr(node_startup, ISCSI_PARAM_NODE_STARTUP, 0);
>>>  =C2=A0 =C2=A0 static ssize_t
>>>  =C2=A0 show_priv_session_state(struct device *dev, struct device_attri=
bute *attr,
>>> @@ -4488,6 +4489,7 @@ static struct attribute *iscsi_session_attrs[] =
=3D {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &dev_attr_sess_def_taskmgmt_tmo.attr,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &dev_attr_sess_discovery_parent_idx.att=
r,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &dev_attr_sess_discovery_parent_type.at=
tr,
>>> +=C2=A0=C2=A0=C2=A0 &dev_attr_sess_node_startup.attr,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NULL,
>>>  =C2=A0 };
>>>  =C2=A0 @@ -4587,6 +4589,8 @@ static umode_t iscsi_session_attr_is_visi=
ble(struct kobject *kobj,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return S_IRUGO;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else if (attr =3D=3D &dev_attr_priv_ses=
s_target_id.attr)
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return S_IRUGO;
>>> +=C2=A0=C2=A0=C2=A0 else if (attr =3D=3D &dev_attr_sess_node_startup.at=
tr)
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 param =3D ISCSI_PARAM_NODE_=
STARTUP;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 WARN_ONCE(1, "I=
nvalid session attr");
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>>> diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
>>> index 5225a23f2d0e..e46e69c1fd02 100644
>>> --- a/include/scsi/iscsi_if.h
>>> +++ b/include/scsi/iscsi_if.h
>>> @@ -610,6 +610,7 @@ enum iscsi_param {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_DISCOVERY_PARENT_IDX,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_DISCOVERY_PARENT_TYPE,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_LOCAL_IPADDR,
>>> +=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_NODE_STARTUP,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* must always be last */
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_MAX,
>>>  =C2=A0 };
>>> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
>>> index 654cc3918c94..af4ccdcc1140 100644
>>> --- a/include/scsi/libiscsi.h
>>> +++ b/include/scsi/libiscsi.h
>>> @@ -327,6 +327,7 @@ struct iscsi_session {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 char=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *boot_target;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 char=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *portal_type;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 char=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *discovery_parent_type;
>>> +=C2=A0=C2=A0=C2=A0 char=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 *node_startup;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint16_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 discovery_parent_idx;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint16_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 def_taskmgmt_tmo;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint16_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 tsid;
>>
>> The iscsiadm/iscsid tools refuse to logout of an ONBOOT session.
>>
>=20
> Sorry I did not highlight the key points. The root reason we need to reco=
rd
> node_startup mode in kernel is userspace's node_startup mode is unreliabl=
e in
> some scenarios:
>=20
> 1. iscsi node and session is created in initrd, the configure files of th=
ese
>     nodes would be lost after we switch to rootfs

That is not my experience. When I boot from iscsi root, after the system=20
is running, if I tell the iscsiadm to logout of the root iscsi target it=20
refuses. I will test again to verify.

> 2. someone do iscsiadm -m discovery but did not specify the operation mod=
e,
>     the iscsi node's node_startup would be updated to which specified in =
iscsid.conf

The default on iscsiadm discovery mode is to replace the info on a=20
discovered target, but there are other modes. And they don't effect the=20
current (root) session.

> 3. someone do iscsiadm -m node -o update to update nodes' configure

Again, does not effect the currently-running session, and can be=20
considered shooting oneself in the foot.

>=20
> What's more, it seems "iscsiadm/iscsid" only refuse to logout of an ONBOO=
T
> session when logout is specificed by "--logoutall". We still can logout a=
n
> ONBOOT session with "iscsiadm -m node -u comamnd".

Again, I don't believe that's correct. I will test it.

>=20
> Based on these analysis, I think we should record the node_startup mode i=
n kernel
> and check in userspace to avoid logout ONBOOT sessions.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07%40suse.com.
