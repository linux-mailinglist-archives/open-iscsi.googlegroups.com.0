Return-Path: <open-iscsi+bncBD54HHNYIIIK5UPUTMDBUBHL3JRBE@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E38D6344E0
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 20:53:22 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id cf15-20020a056512280f00b004a28ba148bbsf5909684lfb.22
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 11:53:22 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669146801; cv=pass;
        d=google.com; s=arc-20160816;
        b=PyyaQj/Rw9I70jRjWujI60/XR2m6eR8/dn6/JIQhPJARIz1DWHvssKWVGhO1nDhsEq
         8oAgnK20YHrJKUz65I7jv+rmfEXFKB5R+eEs4VJfSDiJl622vQWWhX/8YCS/PC8nDiPi
         AtE2BjLcZ8V+Gk302g971/YHnPcy/7c2J3Wb9dGETxVoMEMM7FT0eJPeP2ygDv279Aj8
         OqwJI0RmlWxPcpwcxzMn86+pcRukxD5NDZYgG1e/S2awLLXo3c40QQoWpF/AhJAT3u0x
         HZn37Bf7KsqU33pQQwkkxqk8LYmJZ/rGE0wLi9bknjOFheEE3HHsJA5zM60Pt+Iqgwx3
         Vl/g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=E1+Hq1xVjEQEEWBCMD8KZZEMtoMDqlEx5cR+8aCTZLs=;
        b=gd00B08wP8awBnZGEl1qFgSVv5YpB8Drln4V71MD7nPUVan4ZruSrC2UEYJI+Dp7Mc
         ZaVfiJvJtfYxFkMDKj2TokKS3IwOEk+ZPVbdWCGBqdjf6fLl6OkK1+J2QGOjvgoVYFzZ
         3ljd3XROEZXCCyF31BGlXKCzTBkKflDudDXWfPzZIGfnrDQRzPCwR6FmOFUtDXTgDmLn
         ZeR8IfXJOkhSbPvuYkpVdyAxuhqZUkqpaURL+3y03TL/Ib2OXw0GjF+Gl2rIp3LvMvNo
         Myen+DOFibRVi4F+Jg7kJ8s6jeiv1eFxJvdZuDLQhKhrPSoyp+3EnxTm8os9ApIz/7E+
         fI1w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=xy6t7tfj;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:7d00::61c as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E1+Hq1xVjEQEEWBCMD8KZZEMtoMDqlEx5cR+8aCTZLs=;
        b=intlv6FQjkf/ti309Jn1nW5tO2+CQrtIiXEX0AbgdbCapqoQKDBQRlT5NBhfp4wfpe
         zeVd8z9HjT3WwaTxNsXy7/kFLHgV8bFfoE+fbr/WxU7ur8/EM4KMns/5gwPaIaocpPoz
         p8yF7O7CgaXgc1LbOWxudH6eSgsXBLP8WFGr/XgUVHj2JB2QR5WAknI2L/BHJZmcDCeU
         rX2wrBa2TIETSIwnOhyoQBCNUcdmVlabqHbtp0wloK0Y33WKqKrZUH+9Fc28UC+/cJaI
         5XhxLl+l5B3zf+NeZkJ5m9R4V9QklmGFiycn+KRCdad/yoXX/zQmsM+l6LF28aO2h+co
         bcBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=E1+Hq1xVjEQEEWBCMD8KZZEMtoMDqlEx5cR+8aCTZLs=;
        b=uQGNvz6oQyS/3grvN7KcCGMGQHHYAdy8Dv/kVPKEy5+NwJQd3l4YZteMq8oI0Knvyy
         1DWCc7dHLAVOm8vl5XSp8YlQelqLk3743GKal/d8M8K/c4Xle4bnBhHcelXCucL6AfRP
         le3R/PPAFoWab28wBOQa8YKvX3me41uvcwWk5OIO1sSWD6exxIAHHAljPaqvz7bT+XTH
         i402Zper1LEP/cXNlvZH9RAE2p5uSkA0ovPjaxUEgeqqqX0/Or1PqX1aoFgAZkb9luKS
         ky/TeJRkDZxXwraLng/c+/1x9wtBZV3lFSkPCsLwiyV71o2W7vbrmM2Zo3nt1sqlijXn
         hWqw==
X-Gm-Message-State: ANoB5plF4lmY5S0vnZmCSj/NXxs3QXxOJWSSD34aw8jXnaUxv/PfPScx
	h+W4lvdKLwzusz6UL4nL63k=
X-Google-Smtp-Source: AA0mqf4H6tM7Lrj/Ym0Tm9UgxmmPFux4vB4RiOALmkjA47clak5HBgRYEdR0eKMPKJIhGKUkskbWcQ==
X-Received: by 2002:a05:6512:2207:b0:49f:53d5:d82f with SMTP id h7-20020a056512220700b0049f53d5d82fmr2622579lfu.635.1669146801256;
        Tue, 22 Nov 2022 11:53:21 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:907:b0:277:a9d:9351 with SMTP id
 e7-20020a05651c090700b002770a9d9351ls2629256ljq.7.-pod-prod-gmail; Tue, 22
 Nov 2022 11:53:17 -0800 (PST)
X-Received: by 2002:a2e:a26a:0:b0:277:34bb:ea2 with SMTP id k10-20020a2ea26a000000b0027734bb0ea2mr3630678ljm.427.1669146797824;
        Tue, 22 Nov 2022 11:53:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669146797; cv=pass;
        d=google.com; s=arc-20160816;
        b=J2JQAtr7jQWZP2A4igY2wPkvv6OVbDp1MVEtTB0zb/mgShleGS7Dic0gdiiempW/FL
         MWOJ1c/1/IOqOU6I7Q5Nw4Gwvp4XkDZgUo/dSg6h7IEtUM8ocj4dRPQdxYdiQddEX+bx
         u+bgr/Qu/JiJRicsIrF6VDccPMRgoALU1fgyRd08jUb8+98n3zHI5tRnhMi0rHTThjWb
         qkhGs0s2BbSH9Ex9rm2jkAZ1R1nkNKawGrzg14/5P/lnXFg5eArAxuurE8NVFD7BiLXj
         VmmAWPeqCMwskgh8ZrBXp+V2fqnqtjyxFkWdLO+mc9a8ZhMaLEZvZGhrQmqVeNU1LK9B
         d/kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=Kx+mxFc8tMps54NrXNJFahpJuYcHu5sZWJwcXG9GEIY=;
        b=ugx1PgXlOCnmgxzHdhuawb/tgv7XdDoo+Yfkm4+MlektbvAZKSai7Bll8JeuUF2XER
         rIScVpczXj+/BzK6Aq0gadw2XHJ3/eJvNQaCiEB6NaryQjXDC0jela9gKtN8fZntFXvj
         GQxAYoWQ3U2BhKqTIlEXKh1595h7OCiZMi6TReRrpaIJO8mEhVPbbLLTtAw54bUwY9Tn
         dnpxyqKcAfcgt0sxBkR73SOfw/87AfNaIHgKjV9Ce/3ipXKU8Ced6XKnQGbAGIdBQMg3
         57qfA7dK6ACTL3djng68j5zKWGi5369hOJeXMZRxxF/Y41FDIy7joouzN0+Qu4Dn7+K6
         OfNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=xy6t7tfj;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:7d00::61c as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2061c.outbound.protection.outlook.com. [2a01:111:f400:7d00::61c])
        by gmr-mx.google.com with ESMTPS id q3-20020a056512210300b0048b224551b6si557107lfr.12.2022.11.22.11.53.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Nov 2022 11:53:17 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:7d00::61c as permitted sender) client-ip=2a01:111:f400:7d00::61c;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mS7IfP9tzpiZ85MXlWkHz99OP/QnZxbfeIA+B7PfSUQHae0qkslwMoLea1t/dm5d138/a0APEaesTjxNW/6H+NXrVb24vCcJ6nvdK1hiXvqU/Xgk49D+Zo2Db+/rz2T8QF0MvRrDM9EXjp79H6fPPuwWG3Gy3/UyZzDpKhKOc3EfbSOTR4bfU02Jhmd3APFpQ8qB5RE3dibRGxhLv9C8b+k6s2D0ToMCEbZfpq2/U/YTpZap42JbGAEUtAXOoNeqxKLqtRCl2FoMKaDrySszXxI3so02GS3mt+/uVehgQ7mNDIB2q9UlguDwFTb6XXCMwwU8LDJOKrp1R4uguX0Hdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kx+mxFc8tMps54NrXNJFahpJuYcHu5sZWJwcXG9GEIY=;
 b=fA5kGl5XmYC/ZHv3lypq5KB7XJ5RqzIjBuiqQQ+yI3O8XtofNWxASmH8ZDXB0/LGWys+X2Pp0ogup97lDQc3Bi2Zz0ra9mO6rugg2HWctxY9M3D0DqPZ0j025CB4D3ZO+WEv6FthvlbAxdvYMUNxpiClppuD2RBs4tl5DRQfL+7jGIXcYX3kZfIS5JGKeVea8XtPpVA7cJYUIS63mn+sRy9AWH/DZyDKzXqseu7TFnIioufMehU0g/nMsMaj6RP/7Wi1nLurGcNvU2vuunC/roMZkUKzzTkyIFMf0iYe9XtSJ352QlKWOVsrd0WdhMJXOOzy1PIgqaVcwnZoBeEG8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by PAXPR04MB8751.eurprd04.prod.outlook.com (2603:10a6:102:20d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Tue, 22 Nov
 2022 19:53:15 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9%5]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 19:53:14 +0000
Message-ID: <47aa31e2-b49e-739e-dcf8-b91d1becbb73@suse.com>
Date: Tue, 22 Nov 2022 11:53:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scsi:iscsi: rename iscsi_set_param to iscsi_if_set_param
To: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, liuzhiqiang26@huawei.com,
 linfeilong@huawei.com
References: <20221122181105.4123935-1-haowenchao@huawei.com>
Content-Language: en-US
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20221122181105.4123935-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR3P281CA0168.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a0::20) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM5PR04MB3089:EE_|PAXPR04MB8751:EE_
X-MS-Office365-Filtering-Correlation-Id: 287d825e-2783-4a9c-85a0-08daccc33163
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QHJcH0Obl9GrORpmuLDqkC7u1c7kkYgzG9RYTvbK/8emqCHFW3QOTDlqJX3uVbMPT6tXXX6THOM7/V+IxKYNNEXny/+2Tq5k6+QnAnJd5djjnkKMLtsdn/FVSAhv2hbI8NpgLuihQ60w4av6XoTdDQ/D0FUZJWOOZDSrL5igkdOVBFWuLn8clD7DRpzHlZRKRN24E2ypTbeH/8zHpEYJXhAZRSfvFha0eWiJdkJ1jjd1gv7K4w9X7P9Bx9dclfSa3yK0I+kxuM/tVXdnQUOnEijQUPTqiCgZYUs+jNd2jMgJxxqrCJOZBhDkXYRSLwx5TUC5o4J+Dzwb2kcM+gVCKbn2BG5k5whKtZZpoDnXH5r8h35m7o6krbRG3ZO3UIVAdYx/RmUs7zlwgDzqWQPMH5LZrGAtTsykx373cR/cTa7+9olRrZQVtaqWJ02crQnKI8xsrMlYeB/W1Vc/DDZNPn0d8toQI4rUPppMuULzx2Sip/sjY6N51ejkinAzg9Xz3q/97NXwnQ+q4UWcC8nG/aIFFdRifnKhbsJ+JdSqPaavflG5x/sdbNZW9hsNoUyGRU6ZLI/h14QW/PjEHNhitJa+ARfRrNjaoXPXAPVv53lMnh6iNMnXa26fp9XLJDQVTSA81NlS2LYWXMwnwdinry2/0Rm++4Q6mAT/0dQ/c0eCDAA4nZ5E7SP9KrJBhLTLWIsLTxskPsZQqMSHhO1krfoLFu2JxWaFctP4VaDevF4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199015)(36756003)(31686004)(66476007)(38100700002)(41300700001)(31696002)(2906002)(86362001)(83380400001)(6486002)(316002)(66946007)(8676002)(66556008)(4326008)(6512007)(110136005)(26005)(186003)(7416002)(478600001)(8936002)(5660300002)(6506007)(2616005)(53546011)(6666004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWNVVnBRUmkrS0tlZ3Axa1dVU1RsQzRyb2lybzV4YkFUYVo2bFlGU0FnRXRn?=
 =?utf-8?B?UmwyNkgwMjJ5cW1JQzRjMkNUZ3NYQ1JaRzNZaCsySkROSGMvbmRDSHhNcm15?=
 =?utf-8?B?enR4VXhMWno2ZEUzV1B4SmFpQWNjSXlEQ1JwdFZFV0JuUi9scWRvVDNzRmFC?=
 =?utf-8?B?T3c5RkV3OGVHaWV2UXErYytZam9OZG1JZTNPS0NOUDBFZWlueTJYT0s0akFs?=
 =?utf-8?B?c3VtUXFYdVlDRXRPc1dWbHJPdFRzQzJFRmR4ZHlzOUlISnBWRUZTV2V5K0hG?=
 =?utf-8?B?RFp1WXczTVNuKytJMVpDZlQ2bnZheUsrcDZGNWVMTytnYnp4SUxSbGsvbC9O?=
 =?utf-8?B?YlcxVEtnZzlRWkU3OWIzdVpnNlVFS0hkUCszMklMWnRqbmEvMC9JQm5Way9R?=
 =?utf-8?B?YUZpeUFUTGlnNXRWdndrQWFxQWUyR1p6YWkrMSt2cHI4eU81bDZRdWIxYWM4?=
 =?utf-8?B?QTUwazZCYWdnN3lKY2d0R0lSODRRc015Q3VoRHFFQURtNG5ydVd1Vkppdi9m?=
 =?utf-8?B?NTV6MFFUcm10bEhEZ0wvQ3lFaWJLV3p0b3hXekxPRTcxenM1eVVhRkx1aDFs?=
 =?utf-8?B?cjJabDlYUTJnZ05COUtkQmlFSVgvL3VQNnVDbm15cjYraUFJSURwSnBKOExz?=
 =?utf-8?B?OHYrSXBvZlZOWFlKc2s0cW9pejRIR3hUU0Q3VU4xakV6V2YrVGJWSTBJNHo1?=
 =?utf-8?B?K2pVb3A2UWFReVhPbXptQyt2T3FKayszRjZ5aE5UbW5BdEZLck9SN3A0N3RR?=
 =?utf-8?B?eEtYd1M3TStRMkFIdTJqdjFYUXc5cVBaYWtmV3RSbGxMd1hMMlRVSEdlc2tv?=
 =?utf-8?B?U1F6NGJYc3dodUt2cVRDQzRBaC9tOStPM1kyeU1mTzFXaWQrUEFKb1FGMWxZ?=
 =?utf-8?B?dzJwZTM2K3RmRTU0c1lBZXlIaXhuTFA5K0krV3JLTXQ0Rk9JRjZpaS9HQjFO?=
 =?utf-8?B?ZDE0bTFVVUpzM2lmWVM0ejdMYnlZZnlRNWRDTUE1SHRKUGREWHdPWXQ4MkZ2?=
 =?utf-8?B?SEdZNjloQ3NCZ0dHL2Uzb1lmcnlTellCZEY2cmdZSFk2b2hvWlA4S3lWZmY5?=
 =?utf-8?B?cGFXM0RZWmQxbEF1dy9MNnBSd2FmczlXeS9iNU9wRmNzSGFINTVXUzVrQVM4?=
 =?utf-8?B?MVRxSTM1MDZ1bUlPcVFHVENhdFZFaDhlYktkbEo5bWQ0UExRWkZOSVdKd09y?=
 =?utf-8?B?VEd5eW9SU2hQNjRrY21aRjRQNzQvWWRVeXZNK24vaU42enVLUDBLUXk4ZkdK?=
 =?utf-8?B?YjBXY3V0OC9FTTM5Rk4yWTZHSXYwQjcyakNCTjd5NnZJWS96bkFjQzNXZm9u?=
 =?utf-8?B?S0xrS0dVU0YzbXFYUndxQUJCcTNzVzNOUXNTZG1KZUJIeGxEbFdVbiszSWc0?=
 =?utf-8?B?TytkNStuTzhCYzBXZjhBUVNiZUJJclFhUkdrNksyL0owZEoycFU4a25uMm5D?=
 =?utf-8?B?MHhXM0pNNjdFWDlJeUVHU09RcnlBbExucG1ZWmliS1B5Y0FnczhlQ0lnak8z?=
 =?utf-8?B?VTRtRktTeExjVGV2bmxRZHFtTzZROEQ0SmFLZUppWjhMRW1mcjhoRWY3S0dJ?=
 =?utf-8?B?cGFqS01Ob05yWmhHdGZ0c1ZWblU5bHVZR0x2bVVsNzMxR1J0RVRuQjJ5VllM?=
 =?utf-8?B?enlwdSswMytDNVFKVmNRWmdlRVdDbTBrWENHbTJBTW8xY1dGS2FkWlB3RFEz?=
 =?utf-8?B?U2Mvdi9XeVFDeXVwRlhKc2NMT2dqeC9DaVQ1MHRSVzlLV1VLWVIxQWVJeXkw?=
 =?utf-8?B?dncrV01GM21nd3JJdXFqaW9mTTRBODh4Z2xRSTIybGg5dnpiNkltOVJhamtG?=
 =?utf-8?B?UFlQdjN5cHNGU0tvRm8yQWZ3UWJ4UjE2Zlh6L1RWalNGa0VQMmpNdXZsZ0dv?=
 =?utf-8?B?WFpvT21samVlUTBpekxtWXZRaFl1bmVvWEh6b3UzMVQxS1RYR2c1MFMyd0sv?=
 =?utf-8?B?K28xZVhvSUpxSUdsTlVjZGQ2Z0xqSkU2RHcybGQrZlNoK3gvVWVrVDc5aFpq?=
 =?utf-8?B?VFdjZkNZVm9idGMvaGZTYS96WnhMYU1jbUE0aU5YUEFGZHVYNlg4eDhqVUc2?=
 =?utf-8?B?eFVoT0cyS0d5cm9haXFpWEtObG1BVWxITC94TitKZFZGM3Z4R3lqVUpyb1Z2?=
 =?utf-8?Q?OUdKQSLIO73Kxlzz3mPEx3L+q?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 287d825e-2783-4a9c-85a0-08daccc33163
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 19:53:14.7828
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4zkOt6SIxhqJvpDdwCVE+fxVNr49eIAybn0nzL3lvk4TcUfC0GJ9ZCydPXq2Zzdw6jBrI7/hKGbhC/BnCioPpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8751
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b=xy6t7tfj;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 2a01:111:f400:7d00::61c as permitted sender) smtp.mailfrom=LDuncan@suse.com;
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

On 11/22/22 10:11, Wenchao Hao wrote:
> There are two iscsi_set_param() functions individually defined
> in libiscsi.c and scsi_transport_iscsi.c which is confused.
> 
> So rename the one in scsi_transport_iscsi.c to iscsi_if_set_param().
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index cd3db9684e52..c3fe5ecfee59 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2988,7 +2988,7 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
>   }
>   
>   static int
> -iscsi_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
> +iscsi_if_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
>   {
>   	char *data = (char*)ev + sizeof(*ev);
>   	struct iscsi_cls_conn *conn;
> @@ -3941,7 +3941,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>   			err = -EINVAL;
>   		break;
>   	case ISCSI_UEVENT_SET_PARAM:
> -		err = iscsi_set_param(transport, ev);
> +		err = iscsi_if_set_param(transport, ev);
>   		break;
>   	case ISCSI_UEVENT_CREATE_CONN:
>   	case ISCSI_UEVENT_DESTROY_CONN:

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/47aa31e2-b49e-739e-dcf8-b91d1becbb73%40suse.com.
