Return-Path: <open-iscsi+bncBD54HHNYIIIJVPOO7YCRUBGQ2XSLO@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 310A52D7AF0
	for <lists+open-iscsi@lfdr.de>; Fri, 11 Dec 2020 17:30:19 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id r1sf3478837wmn.8
        for <lists+open-iscsi@lfdr.de>; Fri, 11 Dec 2020 08:30:19 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607704219; cv=pass;
        d=google.com; s=arc-20160816;
        b=SJdm1fIzkDNH7a2a/K/GIdzrn/9KrstrxvcCEjcdEHl+U0czicFYUQIvBudVmceANj
         Vq+NaRSLz+ePUTdJ6EIzCjr+h3HDMfHA53heFO3/bxXChH8mfemhOKDNF7j9yW8F98Vk
         de/onfth67vMC72F2w3uZGzDI0YQa5H6WRPqkWecB3ghM+CwwGQsu2LOdwAev8XHRpR/
         vUyzvoZHsMUGmkCGG4ZPdkg8tivD8GPDRwoIOjCSA2ROj+O/8SxcFj5hlTrC6Ic3Gos5
         qtIa+rKKWw2KJQwKZ/3kn8sqxEgM95hR9Sd182DeIHzkVTjD5gI+7IqKY+clODEW1jUF
         45KQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=Le+RGqTa+3o6QNuil0lKcWeutNyyg81DJTUwEdAdGJ8=;
        b=z+2yw1Vi1EuvANBSBGmUJKWeg88z7lAXOZM3NnIciCLWAiMPpsyAdoQ2oDlE3cIBxQ
         /8xtE41+sLMvEeoiJwaoUIuYH/Ol2IJkAlWqk1E/OvW6tby1RXzwq0x5mzx1z8adf/Jz
         uGOJsu4STP4lzDplwBI3F3TMB8T1yP6vNhYJu1XS+3OLAUB2VkEzYzUPL7RUnz8dIMVt
         96Ptry2UMGEDua9DJkxrKHKbllStXDKT8sCVJFnpJ3O3QlN5ohLRtRNtx90nQr8Jb32j
         AF77HrJJ+7kCcrl+6r/CYNpC9havjo9lHHXsYRosv8ikzxuN0Y7PNRBu++DF+27CUd8Z
         kgPw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=Uo4GpTM8;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Le+RGqTa+3o6QNuil0lKcWeutNyyg81DJTUwEdAdGJ8=;
        b=l4vsreDrYWozcGJ4rbjw6DL8vp14ipwsFJ69GCMggnXreXdpvOMgWCqGYCwRZX0eoA
         uArPjnuV5EfMUE8Qjg+CQ1zzKx9WLMLl2jW10B1Nr/UpOtupvPdGQwUnY1TkJrhk9iyR
         hatrAA6LuambxoaKwmvdC9cZ1gK/eMrN1SgFGBZ+GCdyu+CSe6eAKpPGPiWPhZnZH6Jm
         Vt7WWiAiWFWSc1W4TCnRnLJ3GsjDmZ0QYbY1QlLIDroyD4U11UmmJWRH2XoBwLGV0v2R
         ZTfIdI2usXioFhjJ3Ag7ONsbeQ+EoWlvB5NZinQJZrX9aG8XP9f7i0XPk/V9QViI8VJ7
         c+mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Le+RGqTa+3o6QNuil0lKcWeutNyyg81DJTUwEdAdGJ8=;
        b=a/wmbShdaQqkwOpy0T54HZwczResWSN+mC1OekUBSsMjuGFdlU3xBE5+/dNqb3bgIQ
         sZ7w4gzchB4j3EwJbOl3NeGlCaCdJXhTSF2a7WGuoBkZqgtiec8Tb0NJTv5FtpSxWyI+
         ewimAGSshx+Uo0xMfz7G6QNCCEzdPkoqcH7jXsBG0J1VW8mnleLWSEQQQHRapRZ9HT86
         P7qqyYvnKWDQe5jYkFWCJxIP/YCxMNexEL5LDInezIthsZJJNxHROmhkJ2prV7loBDra
         oLGFQtMMEMsl7E3RuqqRil5T+rlsRL1FFpR8/AYiQqaSsKmpeK1yGNUyHqVa82RtOglG
         go5w==
X-Gm-Message-State: AOAM530TSe3i6O4X+IH/Rlhx4JfYcJ/nvsssjyeDdq4tcOYVHO7K7lQy
	kCtLeOHJnl4qzb0uss3qCQU=
X-Google-Smtp-Source: ABdhPJxs3oHTLfAfXBnUV5qLhEittfEKKcPWA98TMW3Td+2y+9Y04569rO6jG0eeSRJeMviWPpHIXw==
X-Received: by 2002:adf:f349:: with SMTP id e9mr15174103wrp.110.1607704218914;
        Fri, 11 Dec 2020 08:30:18 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:66c5:: with SMTP id k5ls4131465wrw.3.gmail; Fri, 11 Dec
 2020 08:30:18 -0800 (PST)
X-Received: by 2002:adf:eb11:: with SMTP id s17mr14753555wrn.185.1607704218122;
        Fri, 11 Dec 2020 08:30:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607704218; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fwc4/JWjgI9qwsiAIJdEmiaV6cwU1bvVSUwg4nqitCsl5Rg9X7QGvIygXRvabk1Mqo
         7INEJKWkLTZqtqPWsBCNCKi7F9HfXOV0T2NCgnbx6cBNQsgUHOU892frm14ie0iBdU5d
         d+VvM9fHmxfAkyiGsDJiYhsyrkt7lAhHPvoOIv0H4bMzA9BGw94DJ2nUzJ06PTjRnfyu
         UiscX2kN4Am9PlCvrrklUDP73+2dm9B1JYOQBCl8AXkYZUqgAJ4jKNrCAUVMozor0WBW
         nRBuboPcivSpcS3rvcQBThI8+wzkk+5ys/+uXXO55GP3L2yR3NdRKmqVFsWFYzMGE9EF
         Hzgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=EkBuO5V5IiYnAl7/oFY5AgXHf4KsiO9sD2QKC1J1syE=;
        b=VjID5uz5EX7uDGYWpZdkrmAsRO7J6RBDRff+QkK6jGSlJDNEDBByf5TETr1s7qeADO
         pxagt97iI6V24T0Y1MucqHZqbR7ehL8zJcTEfRAv963/BWSk5X9bHMivuXpV6gkwAjPH
         aAteCgm2sLpUe8fpHR0PYcT2s1ntGr1gmKPRHhw2DzeQqcEI26Rn/H1E1UyaslxuuaKH
         e33MljS8h2WRi14bon38+BlC8ZCEXSdM5X/Krz9BFa4V9EJHjp7IKQqrSzC1uIWfkG/Q
         rqXzHV3iGNzzIwXRyEqO4YZmjbAkz3wMkMTv3Yg/R1MZE53xbNqqxuaKaqKWxNQm83I+
         bRAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=Uo4GpTM8;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [194.104.109.102])
        by gmr-mx.google.com with ESMTPS id p3si290000wro.3.2020.12.11.08.30.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 08:30:18 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) client-ip=194.104.109.102;
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05lp2113.outbound.protection.outlook.com [104.47.18.113])
 (Using TLS) by relay.mimecast.com with ESMTP id
 de-mta-11-sJMgv_TqOYaRAQtHadgPXQ-1; Fri, 11 Dec 2020 17:30:16 +0100
X-MC-Unique: sJMgv_TqOYaRAQtHadgPXQ-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+wol2lvlkyB3v7249UE3MpjxC+x1YyGAl1WkqdLOcH1YyL8/vMGfkxM9bxpVG2cDBxoPMcFzSSLceHdLZGfF4QssCR26OBLSAagYGoT3xCFANTf2lvdqdUN7jEp9qbeIH4lTSM4iNOGVwqSZDxUyDUIYdYB3Urc7gG3jPFJWK0OHl52eqx3Ixx3xcFsNVkY7BYTbYZXYMu2zZhGDSHOaZqFDYbhcp6dsT56SnfPoYg9cI0aNgI9a3kX+N4xzt3uTcKY06wYI47Wvh34anfUYIju5S/TzdCuBs35xLtqVbTDeJcxB6SymuqABtgOtCpRpdzKWDgZJVrho0IqMrcsjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EkBuO5V5IiYnAl7/oFY5AgXHf4KsiO9sD2QKC1J1syE=;
 b=m5/zUe408RvEc+6k5+uOwpT89r/7/QGXIptChMlFphBwPkQJdDwh52qby2mUZRjCx00M9bzXWUhuULyyy52erVSWE3GrwOpOryBTFgrOJyknviyvafSPFvmmZuy9QGS8XniekKAwOnuScULHKIPv6rTcTPJsAGBS4YAf55B/L84h9xuUjFzxFqdqpC6NjU/wLjZavyrPy8oW0uY+HDFZAnc9gYf2Rx1saVBp0cp8u5vY7GOfKUGvH88ye5B58Cc4Ek9w1OioqMqTW0oRBfrBosrnqiqrYOHjq3hui7YUypbqMf0wWI5xiREi1K8Ou6UtlKcSrCZN8VIBpAjIdDfj2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM6PR04MB4616.eurprd04.prod.outlook.com (2603:10a6:20b:1e::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.18; Fri, 11 Dec
 2020 16:30:16 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952%7]) with mapi id 15.20.3632.023; Fri, 11 Dec 2020
 16:30:16 +0000
Subject: Re: [PATCH 02/12] iscsi-iname: Verify open() return value before
 calling read()
To: Wenchao Hao <haowenchao@huawei.com>, open-iscsi@googlegroups.com
Cc: linfeilong@huawei.com, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
 Wu Bo <wubo40@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
 <20201207015410.48488-3-haowenchao@huawei.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <a7599e2f-ba24-81ba-a76f-3704b94b094f@suse.com>
Date: Fri, 11 Dec 2020 08:30:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
In-Reply-To: <20201207015410.48488-3-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [73.25.22.216]
X-ClientProxiedBy: AM4PR0302CA0026.eurprd03.prod.outlook.com
 (2603:10a6:205:2::39) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by AM4PR0302CA0026.eurprd03.prod.outlook.com (2603:10a6:205:2::39) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Fri, 11 Dec 2020 16:30:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6514afd0-1557-4c7e-6e9f-08d89df20ab6
X-MS-TrafficTypeDiagnostic: AM6PR04MB4616:
X-Microsoft-Antispam-PRVS: <AM6PR04MB4616F9055F0C540091B3DCFEDACA0@AM6PR04MB4616.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:393;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h7jO9J5Jm7qZPsO1mw2T7vR/n1+sf7fTQQkGi3U4OS/zVrSZF2/JtKGG3Ay2hjVgyL6Xe7iZ1dv9KW/ADxEB05c4SEITt90o57ovMkanXkizQBIVRJlVu3FQcy1fvsl3Qky421eCnCktv5E/5grie9CJQKfgvJE2pKVExUmVCMcIwNmVckMHj49ELxgRkHk6yrQzbt76z+bSjuqaK4rtj7WM4YoRS5JdiyC1PMhY+Lk/TTt6EN+ORWM8chVa6h5nsYvL4OaXmiG0KnA834o6ylMAwyp3nfM3jQoFwwhJf4XYAwFjhu8KUEg6V3d/dcr8uhUXJtB7TavUXg9h/HLttvkfXTzD1QJNT+iJXvBN8oQhPd/61wyR/qvusjBk2kqV0j3eR0djqpAo4pU/gDYGG23H9UmhYaM04+FJbg/+Xh8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(396003)(136003)(366004)(39860400002)(31686004)(52116002)(83380400001)(66476007)(36756003)(6666004)(16576012)(2616005)(16526019)(478600001)(186003)(66946007)(66556008)(6486002)(86362001)(54906003)(956004)(4326008)(2906002)(53546011)(31696002)(316002)(5660300002)(8676002)(8936002)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?d2RQWGNUclhVbEZHOGYxdDdpeEhJL0tJSnJlVmw5c1RBbUt6eWRXdUNkN2dj?=
 =?utf-8?B?SkZTY3ovV0k1SC9ObVJsNGJ1V3pKYWNMWFkvcXNzV0ZqeEx5WnJrWExXUHVY?=
 =?utf-8?B?T1grMkE4aWJaZDVkZGYzdC9hdG1rb3JyQ1JHV0dNVVZYazFsdjE5YmJBM01r?=
 =?utf-8?B?UVBOaFZ4bWVLR2NSalRwMjdCbmxhWmt3WFpYQVJhcG1KY3pkM0xZcE1xUWp1?=
 =?utf-8?B?VzkrUmtZUXduYjl5c2lrV1NlYUVEb0IzakxYalg2NkJOdThrdzVQZml0Nm1h?=
 =?utf-8?B?NUkyQ1RsZDhmbWFyN2ZzelZPTmEwS1pOUDhmRHIrS0wzNTR5TEV6eHF3dzFU?=
 =?utf-8?B?MmRFckdoVUtCOHc3MUQ4TERiQnl2QmpFNnNWeWY4Nnd4U05uQVVhS0NBdFBI?=
 =?utf-8?B?elp6MHZSTnMwWk1nYS9lWGJqMy91T1dSOTNLTE5PNFZrVjFQWEgxME1Ob1Zx?=
 =?utf-8?B?RmNFaXhPMkJMV1hCZ1prTlp4NHVrOGNHQlFnb3VvYXVPKzVzWWVNTS9FS2tD?=
 =?utf-8?B?S0hJT2RiaVNsZkVwUDFjUXlSWmVEUG9MczNQK1c0RC9uZit3SVVLZFc3K2dI?=
 =?utf-8?B?Qng1MWFiV3B0OEkvcnZKN1puTTNPQng4RjBVOHhIVktCQ1E0S2E3ZFdMNlpn?=
 =?utf-8?B?d3RoNzk0cTBUSjZndmVWMDFqZU1kbGl1akw0YXk0MnNhaDlsbWQ5aXdSZUFq?=
 =?utf-8?B?dktVZGxSMmYwTnJNWUszNGtaTVc2SVBNVEpXaFZLTEJDN3RNd2FHTU44VnpD?=
 =?utf-8?B?cFMyQVp3b05UUHE0dTlaTms1QndTL0RlS0xVU20vWGo1ZWI2dDlxNE85ZWlH?=
 =?utf-8?B?WkQvdDE2N3YycS9TbFJobGF3TDJWWU9IcldxZllJMFlyQWcwcnFheHpOSnJG?=
 =?utf-8?B?RGplbnJBYlhhMnhsaE80VCttay9wellvbUpoMVZ2dStaQnFhQ0o1a1Vtdmlz?=
 =?utf-8?B?c2dkSWJ0azgvOU4vMGxzY3c5K252NStqR2VJSmJleldLOWdmY0U5UmloYVNj?=
 =?utf-8?B?SVNUbHlBdXB5Nmp0T1lwY0t2SEVxK0xPNSs2SWdpRXp2VHhIbTh0WnF2aGJI?=
 =?utf-8?B?c0NNODJRZFd6TGU0bG9nN09BcnlzMCswVWpoaXUvemVINGl6bmpCZmpLWC9O?=
 =?utf-8?B?ZHN5aUhBajFFaUhzblhjMDEzRlpqQktFNWRmdnozMWd6QVMrRE42YThwQnFv?=
 =?utf-8?B?NTFFR3Y5ZHBUcUFZRHM3WDdWRWRFa2tZSmdaR0toUzB3RDVYVFdwQk9iK0g5?=
 =?utf-8?B?bGdOVExFZlRMSTdkRGc3TVdzUy9ER1NaUW1laUVsa2dYSzhmQk0wZlFWQjZk?=
 =?utf-8?Q?xp0SwHEb+3ZB0=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 16:30:15.8790
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-Network-Message-Id: 6514afd0-1557-4c7e-6e9f-08d89df20ab6
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f2d8SqXUSBiLY4WTAFyS56X1Z6IonQhU/NQ83lBKV3RuKah/6GuaZWNze69nkejYUlXyQovwSddE+ITAGI5i1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4616
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=Uo4GpTM8;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 194.104.109.102 as permitted sender)
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

On 12/6/20 5:54 PM, Wenchao Hao wrote:
> System call open() might return -1 if an error occurred which
> should be taken into consideration.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  utils/iscsi-iname.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/utils/iscsi-iname.c b/utils/iscsi-iname.c
> index 0f587e1..834352e 100644
> --- a/utils/iscsi-iname.c
> +++ b/utils/iscsi-iname.c
> @@ -96,7 +96,8 @@ main(int argc, char *argv[])
>  	 * uniqueness properties
>  	 */
>  
> -	if ((fd = open(RANDOM_NUM_GENERATOR, O_RDONLY))) {
> +	fd = open(RANDOM_NUM_GENERATOR, O_RDONLY);
> +	if (fd != -1) {
>  		e = read(fd, &entropy, 16);
>  		if (e >= 1)
>  			MD5Update(&context, (md5byte *)entropy, e);
> @@ -141,7 +142,8 @@ main(int argc, char *argv[])
>  	 * good as any other).
>  	 */
>  
> -	if ((fd = open(RANDOM_NUM_GENERATOR, O_RDONLY))) {
> +	fd = open(RANDOM_NUM_GENERATOR, O_RDONLY);
> +	if (fd != -1) {
>  		if (read(fd, entropy, 1) == 1)
>  			bytes = &digest[(entropy[0] % (sizeof(digest) - 6))];
>  		close(fd);
> 


Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a7599e2f-ba24-81ba-a76f-3704b94b094f%40suse.com.
