Return-Path: <open-iscsi+bncBD54HHNYIIINXPGO7YCRUBH7LWJDA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 8024D2D7AE6
	for <lists+open-iscsi@lfdr.de>; Fri, 11 Dec 2020 17:29:16 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id o16sf1745222lfo.0
        for <lists+open-iscsi@lfdr.de>; Fri, 11 Dec 2020 08:29:16 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607704156; cv=pass;
        d=google.com; s=arc-20160816;
        b=OV7C9W1PznNKFqfTm+xXV/hVoU5DGbw59Ot6sVaMAhHPzgXJdLxyBl0bybvevGVhX+
         c8AxhDAbHhNKCix8PzM9ivkwJhG/y/sKdImY8CfwXW7LW5dpceZOLHYzOFvPcejZntG6
         PG/6J85XiZ7vDWwEg4X+BmMFL+NCGHytGA0ewx0/9gMk11MdyaNkUOJubz0QYkix+/Sq
         C0fG6urejPQnBv0zBWfeZw7zYCkGwzhDFzTauP1xUsStcxCVw4GldwjIDcVlGFemK7vF
         9+JsRfonRr89BUsyIftmU9Oj594O43PP4qh/uBD703oX803JGZ0m89XxQHxbW8myY6eE
         ZTag==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=BdX7faspUmmvKi6P0/wR3JesbHiqo66ttEGqMfi7pbI=;
        b=arTQlTIgej+qlCVIQMcTEhj1XIpf5KFKUvMRDeHhDUFdS5iGRJkmuWss9HTklVWM6M
         7Sckjv2JfwswvLxkk5+0Hr29d0YwL0XQiHuB+TeU7LThsdSqf1hZQhYOIAuegLBxBiS8
         EojXE9UAIlcoojgArB1uYPA16mnNlcqDhBUvMCX8p+wEFSrOG814UQXd5GVU3X1uK2uB
         WKEC7Ht7+hyYRtRHR6d1QdL4lPjFXozYCe3Ybb9WZw8hszfQRYW6tOr6y6XWOQ3EFh5K
         UmvC8/mKkQaYtqRL1zoMMsND9Wb+y+KVPbTbEPEpWevHBOphbPmp/v6ZCP79jhlKUtf8
         99ag==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=Hcqb1OkJ;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 62.140.7.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BdX7faspUmmvKi6P0/wR3JesbHiqo66ttEGqMfi7pbI=;
        b=tPKN7xZsF3jOipuQIQkWDmql77A2j4oLLOt05R9LuZV/jVcAqfZ6ALqy1kofTGLzwx
         1t0TXCCx9SR80LmEwHFsyIKhixOn1ODD7G2o9K+5yhBom2j+S3ywpylEnBgTthg7PqZ4
         xuQgC97NSrj8zKk2v6E4tfJ0BhdfqbBYfwwjHdJuWt2F3HAWvllFv9hyQ5LLJmQCcjut
         tKkPEDAHxdfD7tVeqtNkiVeCAKwYsf3WF1601PNGrn1AGX4pmlEqmPyZIHSsehw6Ssbi
         HDSl3iywDfb2WGF88gkij8s6p0ox/zED271ruAJeS5WVfci9qeHKoX/Dpa0x/xVdgTVv
         wofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BdX7faspUmmvKi6P0/wR3JesbHiqo66ttEGqMfi7pbI=;
        b=Gdu45PKsiA1motEzVXm0cTvn5hJhiX+4tzyKd6HYmTwNezGOY4Ed1vUAuukr2MVVZM
         Yp6urjqeWBJ4aJh1mBD7V6+ZEP0d7gF5qoBl+YxU87weLb5QB/fhtKhgzTUmu8MMyhL+
         5niJs0/pKe9fERCgDiZMhRSYyp8aDEdc3X6f0hcTV3Unk5TTI9Yoxge6PcyO+Wsz9NyO
         /a0JcTGE/uP243dF2v6lCmRaODoAo15/3I/ptpGuumPp/LvB/Nsb+K5d/t9EcZpQI9Hm
         nVPZcDFVx2FnQdApBqt5SfNRSjWAXakQmeOiRvB31hIe9de3rKNzCrw+Olxx28MiFPmk
         tx5g==
X-Gm-Message-State: AOAM531EJ5hDskk/V+EcvVWjT6v2SApHIM+eDaa5gi+ZsYXuwuqSOIE8
	TGHf071RHy+AhRIaa+usFx0=
X-Google-Smtp-Source: ABdhPJyph+9eaz7vT/O4kaFX5V3nqJYy+u4ywGGAITS0E6RgVMiu3AsGgD/aoyXjeLRZdTTuMeunAg==
X-Received: by 2002:ac2:46ee:: with SMTP id q14mr3374493lfo.145.1607704155973;
        Fri, 11 Dec 2020 08:29:15 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:3608:: with SMTP id f8ls3931799lfs.2.gmail; Fri, 11
 Dec 2020 08:29:15 -0800 (PST)
X-Received: by 2002:ac2:5451:: with SMTP id d17mr2476604lfn.222.1607704154991;
        Fri, 11 Dec 2020 08:29:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607704154; cv=pass;
        d=google.com; s=arc-20160816;
        b=YpyQonTWWI31o9I9Wt5nyPtL+uJqPBYpVfK+/Ezr6cowl/XwMBsgL+EHyKEhenCQ+W
         ZETk/GTg7DkJUdIiyjVxW+cEpzXpwTzjo3Yeh5eZasMLjTrgc0wDNhGQldMAedAmCzaH
         RBUual9NtEQYnA+99mYfsWbP+eHozXa2TTIZHPcfMDA7TdeSMqg0YOhfjOX4RljOVZQ9
         CsfdoiR05uUwQxj2zNscL8RbWt9MohLMXtrQXsqdQHsniNdsX/pnXOHHCzXg7q5oSJ7e
         cUr5CtQ1iQ5xm4c+1ELmnrVzSXTLSxhbA9t1l3eneNbER0bj9OzgkB/5pkfv/VNNg3mw
         qdnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=OIJ/36nIxYei5hs/yWAXqBVuV9FYU03VPFqcVsgDySo=;
        b=LT/9f88NDao5izSyRsGYV//3zA6zGZ5c5oNs8kaCM5QII3v6jrCqHotsJYwv+j7oTB
         Cunn5FiHXl9exVJZtokPnJpVxmRnyORXQla5r4YYplZQ3txwMEUoo9Jywky8LejRTQ3A
         mmNOdhWazV7/TyjO6sJ1MYqGHdiQ7Q9kTEwqk5RNahGQw4bkY006/3Wo7sPZosyIalu7
         obVTQn/g0nL1ztQbsA/G8JkuU1uAPAP1Z+mVXagVvf/+t6V5YiH+QiddDrTgOoEqjXpP
         oTmthmQgALbi9tMKeTI2xwO4TNvhYiRIby6vJP7QbjomwS9evDuoA25F16ycpg6R1Y+5
         k63A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=Hcqb1OkJ;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 62.140.7.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [62.140.7.102])
        by gmr-mx.google.com with ESMTPS id m1si269567lfh.3.2020.12.11.08.29.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 08:29:14 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 62.140.7.102 as permitted sender) client-ip=62.140.7.102;
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05lp2104.outbound.protection.outlook.com [104.47.18.104])
 (Using TLS) by relay.mimecast.com with ESMTP id
 de-mta-30-jRaqn5m-NJWd24sxNdrehw-1; Fri, 11 Dec 2020 17:29:12 +0100
X-MC-Unique: jRaqn5m-NJWd24sxNdrehw-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dtyq511swqe1vx2uJXCi9nLk23ygFzasAKXFtxq/JtEKWMJUUmi83Pz7dz/wftC8CCtNx0KlbSp/PfzeYjtabRubb5+TN96b6p1iqzBaKGIrskdxo/Dg6OY60Le9WyjSfalu6QbscskklN/raY3EHiDODfyRJnsliG9xXMq7OamOzdB3WPcGlDEG1reVFJfVrGPfNHaq+LZLRjy6YXiQhowVNyB62Y+y0lJqNOh0jB05FEvE7GCg6e0i1v8vuIXBg3l8UNahykM5+yXxmYATCbB+2IeF5ENQyMMu/6yRQJSNyVh2/S6yRaYTBiIgPBhdbyIxq2GZOIHpTVSiV771mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OIJ/36nIxYei5hs/yWAXqBVuV9FYU03VPFqcVsgDySo=;
 b=AHBFB0aKYF09pwMuSE5f2N9fDYKrTP3CuxLqqbXHp755p5Gox+bK2o8g12q9PHdaU2fPO7HQBqOXIBPaEKenJ84ofCWEuaMnOzzejLdfe/W2jLA0lEnreKnpwvhw3Hc9F0yODiOpMpUss9SXOj3ltoqE52DLVM4K4Q1k2FaOajmKeQlKJOMXP1vRvSqSFLYe87zaMj0xmaR+FXP1eggvrMMBgrdl4s1WYcWN28C5xCrnACjB5C4K/HkUg3C7z0I+Pe7hZUJiL7ts8IGP5pSrIEIb81tDTqNvJrQp0d394QvFL+6icuCrz57asITtvOB23cfsIgYD+qkOIn4gk7eSkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM6PR04MB4616.eurprd04.prod.outlook.com (2603:10a6:20b:1e::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.18; Fri, 11 Dec
 2020 16:29:12 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952%7]) with mapi id 15.20.3632.023; Fri, 11 Dec 2020
 16:29:11 +0000
Subject: Re: [PATCH 01/12] iscsi_sysfs: Fix NULL pointer deference in
 iscsi_sysfs_read_iface
To: Wenchao Hao <haowenchao@huawei.com>, open-iscsi@googlegroups.com
Cc: linfeilong@huawei.com, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
 Wu Bo <wubo40@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
 <20201207015410.48488-2-haowenchao@huawei.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <10d940f4-7526-275d-4f9f-4d05cfcdd0f1@suse.com>
Date: Fri, 11 Dec 2020 08:29:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
In-Reply-To: <20201207015410.48488-2-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [73.25.22.216]
X-ClientProxiedBy: AM4PR0302CA0019.eurprd03.prod.outlook.com
 (2603:10a6:205:2::32) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by AM4PR0302CA0019.eurprd03.prod.outlook.com (2603:10a6:205:2::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Fri, 11 Dec 2020 16:29:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 570458c5-088d-4d7c-9fba-08d89df1e487
X-MS-TrafficTypeDiagnostic: AM6PR04MB4616:
X-Microsoft-Antispam-PRVS: <AM6PR04MB46169F7716D4D38C91C2D14ADACA0@AM6PR04MB4616.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:530;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oHYVOiE3Zhu8Bg51Em7SoGIUrj9DQXtqqSifsw0P2IBlhawLr+7L/5pfqIqEc6hccGmK0gP7SnR1LbOeOY2xc0uepP6ZITnaiPsPKfwXzINb0MUz1kjk22nPOXJWeq9cvaNchVYBIYShUX6X2jMol1IQpgUd/NWYB5TPwETydWJBVEPBgZZmB7M/sq3HMWE5FV3e0Xq/krg8QoRiWRM6qmgNGJcsdFrhFmysmKKkkZGckZ+0hGRSSgEMzwU+hTu1N693/mnDTFhi2fpn3RuquJN7pUA1wAS8+HFbZFSogefv2X2nS3I9YjDTmEPcL4Hm2mhl1nquIZ7hktdvP+3PF+x2/m0EQUPsIsNGNKC2Xw5Ez3qGDu4nTXqnNYe4uboDdJM2U58sSIEsL26BIAOP7i7hHJhFFdBsqoL4Dw7+a8c=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(396003)(136003)(366004)(39860400002)(31686004)(52116002)(83380400001)(66476007)(36756003)(6666004)(16576012)(2616005)(16526019)(478600001)(186003)(66946007)(66556008)(6486002)(86362001)(54906003)(4744005)(956004)(4326008)(2906002)(53546011)(31696002)(316002)(5660300002)(8676002)(8936002)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?UTRQZTdJdkViR0dySlE5WGl6ak13ZEtlbGdad2lqTlJCdHR1V2NZT3JTbmlr?=
 =?utf-8?B?K3VUei9pR0Z6allTSFRRZm1iS0JGdFVIbHovUVY1Y3dKOEJ4UlhRK21hRlVv?=
 =?utf-8?B?N1hXeTJMQXA0NHJWTVpROGVuQUhGa0gvWi9CZFMvY29vbXlzWXRnVnIrVnY5?=
 =?utf-8?B?d2h4dFg1cmhZTmVDN2pnc0xBd2tuTDFLdmxmNlU1Yjd0SW4wd2FJUFFUZGJN?=
 =?utf-8?B?blQrR2RJL3NrSWx5a1Y5cFBIUmNhVlpCK0dwVzhiNHkvZUFFYjlhVnhtSHlK?=
 =?utf-8?B?bG5SdDE0dGxERWNRVkYyZTdycUkrdVorb0VYaVNzMUVTWEtocGc1azRWOUJx?=
 =?utf-8?B?amJRMlgraEpMbDYyUWxWcUpKUmNDeUVhbWFIZ0R2ck1WcEZzbWRaQUJwRUNL?=
 =?utf-8?B?MitTbzN5L21ZRGQyZUlHNUF5MHJBUnRtN2JXU2NaRXptYW5TVC8vRUhQd2VV?=
 =?utf-8?B?akQvOTBScDRCTjR6bGF0M2tPWHpyNHNlbEZqRFUwTytqbVFqSWVGUUJMOHZm?=
 =?utf-8?B?M21IcDJBT0oydjhrOWp2N21hdzJRN1NTRWFsSTBnamZMU3ExV0htbTEyR1VU?=
 =?utf-8?B?aU1NTUQ5YnZrRUZuVnFvL3BOb21DTzgxdkF0eVV6angrc1pGYnR4NWZJWTZS?=
 =?utf-8?B?Ulg0RTd6anVCVTc5clVDcHBadTVueWMvWWwwRmRyNG5yZzZwZzFkcEdnMEYy?=
 =?utf-8?B?TldMSWxOallqUzdaQXRhMGR6Tm1VWW9uVHZUekwzdVFnalczZUVhTGpmT210?=
 =?utf-8?B?bVQ2THJFMVIxWXJjYkFzMzlDK0xjTkovMDRMcEN0UlpsQ2w1OU1kMDdkY3lm?=
 =?utf-8?B?WE9MRjhwTlNzcTJLWHpFVEVveGljWCtBcG1DTEM2V0VhQkZXclEwa0dobG0x?=
 =?utf-8?B?MzNVTGFPVFQ3L0p2TnZHaXVDTU9JUDNmcHZyZ1dqMlhJYUJpeGJxVFFuSVht?=
 =?utf-8?B?SjFGK3JyWkVHZkxBaGJ4bU9qUjltMVExSjZuY2ExMUpWcWtDclNpRkl2Vlhp?=
 =?utf-8?B?d3EzNVVsM01DUXg0cGI0SHB4QWdQR2RCK00yaFE5ZWRtejNmWjJpZWtLZVd4?=
 =?utf-8?B?UzBVR3dTZHNVdmluQlhJVE1hOFpXbllOZlBmSkFlQXdEOEgxVWFENG91cFZS?=
 =?utf-8?B?NnJHdEc2SXJ0bHNjTWp3Z09EWnVSVjAyQkloVlZTZ1lzK0RrOEllblU4OUM1?=
 =?utf-8?B?NWxoQ0JkV2UxTENGdVE5TndGN3pJNXhWNjU2MVhGVERZM0lvd0tybmpjTS9j?=
 =?utf-8?B?UWsySVBPcDc1TzVNOC9XWGFvZlFlUGI0NFMxZGdRSStqV2MxdERGL2U0NDVM?=
 =?utf-8?Q?kZdHjvKjVoM8ke5AoEGOlmjuq8XQendeAU?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 16:29:11.8598
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-Network-Message-Id: 570458c5-088d-4d7c-9fba-08d89df1e487
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tamuywt+Cr7U/fhK8nSkoS2HW0ZQmSQpM+l5zuCmTt4uPVCiB5VXRFxiBozGr0SoEsKQF8iTCrtKS2WSFOTiWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4616
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=Hcqb1OkJ;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 62.140.7.102 as permitted sender)
 smtp.mailfrom=lduncan@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
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

On 12/6/20 5:53 PM, Wenchao Hao wrote:
> Check if t is valid before accessing it.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  usr/iscsi_sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/usr/iscsi_sysfs.c b/usr/iscsi_sysfs.c
> index 540adfd..abefde2 100644
> --- a/usr/iscsi_sysfs.c
> +++ b/usr/iscsi_sysfs.c
> @@ -856,7 +856,7 @@ static int iscsi_sysfs_read_iface(struct iface_rec *iface, int host_no,
>  		}
>  	}
>  
> -	if (session && t->template->use_boot_info)
> +	if (session && t && t->template->use_boot_info)
>  		iscsi_sysfs_read_boot(iface, session);
>  
>  	if (!iface_kern_id)
> 

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/10d940f4-7526-275d-4f9f-4d05cfcdd0f1%40suse.com.
