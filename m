Return-Path: <open-iscsi+bncBD54HHNYIIIOF4O7UUDBUBFQXICP2@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DD37598D8
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Jul 2023 16:53:25 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id 38308e7fff4ca-2b6fbf1305fsf64567571fa.2
        for <lists+open-iscsi@lfdr.de>; Wed, 19 Jul 2023 07:53:25 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1689778405; cv=pass;
        d=google.com; s=arc-20160816;
        b=G26BLk5t3WdH2xa8Bd7TAfLgIGpd2sS7Ckj5tj1Kis4qP3hHqZkq3+gsPlkbyXEva8
         bHJVRhwS6Cc2QdbQsI+V7dzvMBLnzgHFQqYlph2a+XTlWufTrNdPecdao3nA0zmU2TtN
         k2bxF9ThIqTfcQWmsUC34xOZH+1U9YQOCf98KadKaqIPAGTuYVZhPrYAD+izXR4EagFb
         9jmbyss4s5A6eQu114t0HV7I02cFd8ZGnNzMz7T+m5SCl5qT/OHVbVhiDaMi+NauTqW/
         Z+8SZOtIDUTE+18N5isdVShSipdCx5F7tsDXvqDnxYckRNIPTEOStKpIQcqJ07dA2l/D
         aDmA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:date:message-id:dkim-signature;
        bh=ztJTF9on99OCU+KDimbZj15oeamgZmwajBArc0JxjQQ=;
        fh=ThXila884fEPCRSKLEylf+ZvAvMGBZq6tjYVvixX7Fo=;
        b=GWliWt91pCoDt7VtyPjF5WuE+eXmGaRccFzF77VC14J48ZhpZclnelMFKJCi1ze7of
         WGrpX+UKpj1FQ0ofMZ3PoQPT/q3zlrNgRTUhBY2yeeBqoPrF1CGs6R0Mm/v7zasVX66B
         T1c6qwbMXwJZJqel6bM0GbEfmdanyFWlPWj4rUchAReW5NeUhK25L6GZMaelrf6o6KAF
         AVMFVq/l+dlkaisLPJz6IldJtRON7ob/L8abyOI66/rgASZ4PWRw+K4BgU6blj8NwGS5
         xA7u2UEIU9o+GDTWmrWa5t+agxK8slhqldGqpR8e2WZdUvzRVOhSPkfQuMVILRil13YI
         7wkA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=5gzdLy1b;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:fe1a::61b as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689778405; x=1690383205;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ztJTF9on99OCU+KDimbZj15oeamgZmwajBArc0JxjQQ=;
        b=cmNqY8J6VSbI+PUSSmNKwCRVs7n26K6aR+FvP1SPGxG+Nyw1OVrrrjMSVGlhoHACw2
         sd+GKDTkobkD09JThBH8o/evSn9/chw67Yfs31SfIxNjsI6Hp/hkjJdZEn4+ULL3uNRf
         Dcc8Vo2XSrGKKJw7oYWGxaeNu6o/8aNhOomRdjt4H1gq3XvdooPESBAESHRtPHjanaOt
         wRd1Bb/M0AqCgSmfjYxNkHVJyrSjMFMvcTTGRyqVw8EBOvy1k1O6P1fNAZNwrGXMHYUg
         eTIZ7I8PwR/6ZIU2fXS7ppoUnvf8bcLDtZfFnJXV4s85dLxFujzKYjZwEV+JRfxychQV
         CPAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689778405; x=1690383205;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ztJTF9on99OCU+KDimbZj15oeamgZmwajBArc0JxjQQ=;
        b=HazIzXE8Hz4/f+LLFw3xLEQKTb2MdSPSHSqaaJ435aVXGEg79SgaUM4LKrJLZpGHcy
         RjVrjoVauTv6uQqXVwkOP/Ls5S3RZT0XCEBwoDshK3HfmRelVVrLSeCzHp5gETipBzBx
         6TNkfeMEcKnV7I7IbAaqNx2clSgZMkxT8jmLy9sqbrNl2n0iNJBs+piBT/3Upt7Q8X19
         AiGaLp9mAHepQk4/98hkl7Zq3qX/8pCsI3CQVYe8sSrgTjcxftcxaVIao6pOoX05sden
         WR/iGWGE7g8xxkWOf9WvEfe48zXqFmVcxlFkRztTqzgMmLe4NvcmWBTETIBRfMLjyEth
         hvaA==
X-Gm-Message-State: ABy/qLbUOP/Ej/DApKbCmOLw0WQUVTPZc1+etc2ixGGVfJT6uuDra6/J
	OjgCmfrGLrd1thbb3t5bjPs=
X-Google-Smtp-Source: APBJJlHqKOTi/VaOLnbgiUoKNdGlf8vl1v/g4+KQ7eOf8PlwmOZGAqBUU1mBAEgECyCPsRxPHGH6HQ==
X-Received: by 2002:a2e:95cc:0:b0:2b6:d8d5:15b1 with SMTP id y12-20020a2e95cc000000b002b6d8d515b1mr55767ljh.50.1689778404618;
        Wed, 19 Jul 2023 07:53:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:b750:0:b0:2b9:3de1:1076 with SMTP id k16-20020a2eb750000000b002b93de11076ls1880878ljo.0.-pod-prod-04-eu;
 Wed, 19 Jul 2023 07:53:20 -0700 (PDT)
X-Received: by 2002:a2e:3801:0:b0:2b6:d0af:effd with SMTP id f1-20020a2e3801000000b002b6d0afeffdmr122388lja.4.1689778400829;
        Wed, 19 Jul 2023 07:53:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1689778400; cv=pass;
        d=google.com; s=arc-20160816;
        b=QnROvW/Ynq/ooUL4YqrAEleGX91irgCk5yzMF2AHGEva7qF9VPzZPgjPgK0wLRJqKN
         30UTtgPr3Hhe9q0APjIwaAWUghSt8GETKRqX6Z7udv2gMwhY3I0WU+B4hV5jNHxVVUcL
         rKxuA2AtyY9UYzDAW9amWA61mx4NWkB29diUR+9PdrRfCogC8esrhhl7D3T3hIa6uOcX
         ywscvTNNLclXhHQ7HFh1OSYmltjQPMQlVx/ZWqcKGF6Ijqf/eMuuYQ7jXynGVoug+ABm
         k8vVnz/Jsl3nxU6T6rAA9qNZzlbHmStrD4IjrmjnOAkMM4N9XxShWcVDm5g4m6oy+OVS
         McLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=XyPxpPZJ701epvPzIf+cizl6BTmMtJC2gnLfWznx964=;
        fh=PTn2nxMb8iD7RU3cP7gCjPQziXG9ySOWUxscBEmUsAI=;
        b=wwL3ZJNNur/ZFjTjJrd5wU1hIC8wXKF3iJ2Wni0xY78jJPNtKQUT/HiEZhSdOx2LBA
         TbvL68e0HgcJBNn26DF/WetDJ+FGiNiwdX6HVEDvTbviMSVZWprse6aJQeMiFIE4OBsG
         l0PU6oGVgFAjcvof/2b5SZwiT6vQIm98UnI2gs/GlKL8cATNUFINVZHDpQsSPKwgH8N9
         0Cc6GXGLMEzr7s9A+bTmFYhwFjSfr6kutDJFC/oELRRNNtplBfx65ZMOBosR/U0cIAWa
         Ak4yv0RKXSxDhfNOCQE8P09ohi+R5F7tmpbV5pfsNAU2HX8mBv5LMBimLJ6Oui05blMJ
         uhaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=5gzdLy1b;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:fe1a::61b as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2061b.outbound.protection.outlook.com. [2a01:111:f400:fe1a::61b])
        by gmr-mx.google.com with ESMTPS id g26-20020a2eb5da000000b002b96150efccsi24071ljn.0.2023.07.19.07.53.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Jul 2023 07:53:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:fe1a::61b as permitted sender) client-ip=2a01:111:f400:fe1a::61b;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oCHlUu5JnWKt22XJHNqzgjpYdJ/5EHAI4Z0/IPgqw2qVFvafIZTupMyFToAsHD7H/Tch087/9hgbZzOn5djskgTkT38FTGOm1eB8jkJs001X/tkEqgvKY8avrQFLpFoAETZ3WFYVk61fhAo3pXPPO26+oafQpHcDXLnwcqkP0HOKmKXUIrKqDmD+eNu/gR2YeEfdzavR29fgdEdqiOBsSnD9jFm67cHjm4a/2Mpp4BhvYuCWS1Ncng3QWe+EZxZm/8aNYjOiX9Hzlv84agfoSVlQp+EsO9N643ugYsa5MF4E+aYjnjZv+unbegr/s+kkgkTqZWHW0woJk/jto4Qeqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XyPxpPZJ701epvPzIf+cizl6BTmMtJC2gnLfWznx964=;
 b=Z5dniVZ4UGP3MvUgu+P9XkwXWNNclxiWOQfey4HN+0lnf1J1gq2siGVSkto0LbK7L/zdFBf7lVfdhPyQ24VggHH7C45EI9gixWiGC+6GDaD3qAahIOHt7XegT4NxMAr/KXpOZOvHEcjXlgv69CBH4Q3zXUwR+wi6vcfj0qTCLaqsVYUo0Q/MJgVUeCwKWxHgq40BUWuj7HiDI4o3AiB941gU8JMpf7KOWEhE5wntec5U11Qa8mDWPBHb1MRsa3RBCQDSXZW0a2WTdp8qKw/YexLLmMwBua5z6wDeCA4vrkmvlA0uJTWpavE2wrIVwGtb6UaCAruWtWhHbUKwKbxNxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from HE1PR04MB3098.eurprd04.prod.outlook.com (2603:10a6:7:20::28) by
 PAWPR04MB10054.eurprd04.prod.outlook.com (2603:10a6:102:38b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Wed, 19 Jul
 2023 14:53:18 +0000
Received: from HE1PR04MB3098.eurprd04.prod.outlook.com
 ([fe80::ede3:d5c9:4725:f1f5]) by HE1PR04MB3098.eurprd04.prod.outlook.com
 ([fe80::ede3:d5c9:4725:f1f5%6]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 14:53:18 +0000
Message-ID: <7483deb3-2b69-37fa-28ea-fb54aac58ff8@suse.com>
Date: Wed, 19 Jul 2023 07:53:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: =?UTF-8?B?UmU6IOWbnuWkjTogW1BBVENIIHYxXSBzY3NpOiBpc2NzaTogdXNlIGtm?=
 =?UTF-8?B?cmVlX3NlbnNpdGl2ZSgpIGluIGlzY3NpX3Nlc3Npb25fZnJlZSgp?=
Content-Language: en-US
To: =?UTF-8?B?5p2c5pWP5p2w?= <duminjie@vivo.com>,
 Mike Christie <michael.christie@oracle.com>, Chris Leech
 <cleech@redhat.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "open list:ISCSI" <open-iscsi@googlegroups.com>,
 "open list:ISCSI" <linux-scsi@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Cc: "opensource.kernel" <opensource.kernel@vivo.com>
References: <20230717092657.9776-1-duminjie@vivo.com>
 <5bed6236-0db7-37fd-3d0a-4f51874f9c53@oracle.com>
 <SG2PR06MB5288D9E4D3124B5577ACA035AE39A@SG2PR06MB5288.apcprd06.prod.outlook.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <SG2PR06MB5288D9E4D3124B5577ACA035AE39A@SG2PR06MB5288.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR0P281CA0059.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::7) To HE1PR04MB3098.eurprd04.prod.outlook.com
 (2603:10a6:7:20::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: HE1PR04MB3098:EE_|PAWPR04MB10054:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bcc27c0-876b-4a05-ac0e-08db8867e324
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oqLz85oTmXaHrlR1awALtMxaSzedm+le9MKPJvIT1j6PvnG1PFuxj36eGDlVscE3S7IiUCpHsl7Tkcy/QQKMNim+enN3tBs1YF7eJA+TZRAFG2r5nyBxjNHNARVdguHqZvnhEXiqFdkK1gE7d6oRrwkt5dXf4nof43Iq4QuSMpGnP9ihwo86AlIplBuHmtdeNIFuxKz9G+8D1E1pdp6IAfTlESeyEW5AsIbyPuJtmpJakhcylQ+mxZDiYe2tBIMGsmf/H9U9oolvKxXvsb1k6vd0+x48lctqfVduyQ+KvahQMHkwztev2cKM3DM0yIkcfmO3fCYYZrfEODS+o4VVQENFTWlAu12x9LxF0VQ8fXE5OWn4Z75mOwEkG1M06Yc+C8rqeaW91ryxxM6ISvoyp9OEs4OPMXQwGL0THFZgeTpPRu/KDZMGXHfQZzDhQ0QClbicSUJFocwFm4g5msQtbIVVjooPmvoALfm3NEs2Di5D/CnNnsdNZIUe/LWGV/GGJlwlqVZkynMvD8VoYPktxaUtlWzkozeQ71Sgaf4b3xESY+QxjXd5ujdJomwFoeV42WXqAD21YFGrkknynmYAALQUR0UVqUheCAoqSOW23WbqFfPU0D8MGTPv+QKJoX50fbvO+wYTNEsGY2C3AuGwzA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR04MB3098.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(39860400002)(346002)(366004)(376002)(136003)(451199021)(478600001)(6666004)(83380400001)(31686004)(186003)(2616005)(26005)(6506007)(53546011)(6512007)(4326008)(8936002)(86362001)(41300700001)(2906002)(316002)(5660300002)(6486002)(31696002)(110136005)(38100700002)(224303003)(66946007)(66476007)(66556008)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjdmZzVDYWMwNTF5WjFhUHVUNER5ZXZpT2dSWTd2K3lpOXZuRmZQRkswL3lL?=
 =?utf-8?B?a0xtRlhEbkRvUEtOUWxRZThDa2QvczRFY0pmczZHdDFqdlliUWlkb1dBYk1I?=
 =?utf-8?B?a1M1NUhNa1VzMnBSbTNRcHJtZlU0SmI5eHBiLzN0WWZ3ODhRTFVNcFVDSGEx?=
 =?utf-8?B?VjFacDZqa0FwY0hWTlE0Smw3d3ROdmVtL3hxVG5xakpUeFJYL21DbGNrVGJt?=
 =?utf-8?B?aHplbGkrWjQxTERqeUtqTlQ0bmRhS09ab1k1VWIxSUJpVDltakxmbXZBc2Fr?=
 =?utf-8?B?NWM5SGM1eGpKdlpaZzJ6WGxZTTdSYUo0RE9pTEVRWXNndVhvc3doZStDenNC?=
 =?utf-8?B?YXZKdG9MNVp5Y2U5cnVUZkVWM0liamF3d1JUMWhZL3dtMk1MWmlieUY4NkNF?=
 =?utf-8?B?dEtVZGs2TzFmcFhQbDQ2bTEwVjZqczR6VTFRekQ4ck51U3lldzRXTkwrWkFV?=
 =?utf-8?B?cDRZVUl3aHc2eWtKR3BHeVkySXlFTjlMYVBnZTU2R3U4cCswMGpMdG1xM3N6?=
 =?utf-8?B?U1JSNUwzS1JOcWRlQ3FHWEtzK0g2VzRUMEtKOTA3cTN6RHc5OENEdnBZVUtC?=
 =?utf-8?B?U0hTSzhUaVo0eWxUMVdVUkhRNTVkT2tId1czYUw2NWRqa2lXUjd5RjV0ZmJS?=
 =?utf-8?B?aURZWlFxTzNOSVBKdERWMVlUd3pVcXVOVlVoRkJvN2NJZ2lqV0tyWHlvcXNz?=
 =?utf-8?B?anV4VnRSdTVCZHdRdVdRM01kZGZ1VjA4Y3piUmJGSTlmcE5rWFZhZFdvSXJR?=
 =?utf-8?B?NUZwWEgvU1NGQkgrODdNUmgyQU1CK1R6Qk02TWptaENsZTNFTjMrQU9RN3RU?=
 =?utf-8?B?YTZQczg5WFpzbUJuajZBZkhXY05TUG1zVFEwNmJPNnJERmsweXdEcjk5M1NY?=
 =?utf-8?B?bUxrMG5vVTVPZGVxMHJtZ2hHcmhHMnM0VW1HbTU2Zjd1M2o4ZXFaeWVZcm15?=
 =?utf-8?B?dHhzWnlESG00UjV2V0FYUzN1bXZSdUNKdkhYdU5ORHExQURKUG16N2pVSk5i?=
 =?utf-8?B?eWhtbWZXbldqNEJMQ0piRFlJUUtRenhQQjJRSjN1eXVBZVpqSUMyd25qSElS?=
 =?utf-8?B?ZXM1bFA3R3ZueWkxalRjYWhJeEZnRENiR0tOSkN6SmJvOGluTmdBa0RwRllx?=
 =?utf-8?B?ems2bmNtQ1lwSDRLd3lIUStqS3MyRndUZ0hTK3NNeWJRZEdPeS9NMUxWNDN6?=
 =?utf-8?B?K0dvc3hPSFhOY24waWxBVVM5cG50azNySWYvWW8yWnRIYVVWRmY1eWtiZmlX?=
 =?utf-8?B?dnY0ZElPUEZMdnU1K2xEdlh5WG42YzdVdm5kbjIzT1dxNlFMdWZUc0ZRcGhN?=
 =?utf-8?B?UVB6RnB5aDdzeWZadW5pYnVpdmVEejNFYytqM1BWcGRPL21ZU1plQjRjZ0Nq?=
 =?utf-8?B?WnBsRUt1VmZacjhUalBweHN2aEhSeWU0QXk1Q0ZSUldnNUZOM3pIenRpK2Mz?=
 =?utf-8?B?enJjWFRPeFRVVHpSZXBrb0lEM1plTmtKQklQMU5tVUpXZ1Z0WVBwU1pBME9t?=
 =?utf-8?B?TE5wbE9KcWFIMnpDdDNJRkpqUlpkVFh5OFR0QzNwaEsrUmt6RW00eTU0L2xm?=
 =?utf-8?B?aG1YNEpORHZCM3JVWXJjalpMOUR4d3Nudmd4aVdJNWEvVUphWlF2anBOWDdW?=
 =?utf-8?B?YzlKOU5kdlZFaElqeS93K0dRSjRHdC9TTkcydVpZZFlXaHBESVc5WmE1bE1J?=
 =?utf-8?B?cGFGYm5nZGNGcnNMeFVqMFNjZkY3djJoNGRJVkZlVUpLN1BjbWFCeDhjVTNi?=
 =?utf-8?B?NHl4SlVHN3Z5bUFCTnJEb0h6VmhRejhwSzZTQ1N3WWhjMEZ0RzVwcnI4RW5n?=
 =?utf-8?B?cmErWmdyZEM1aUJUU1pxMDVrN3dsZWc0SEJRL1ZMVTF5Q3UwT0pndi8waHdR?=
 =?utf-8?B?ZkY3N09tZUhUWXF4YVhOaHRBbEx1VjZVVjFGcCtxajRuSVdQc255b1FiMGV5?=
 =?utf-8?B?bWpFZHRodHJrWG1KaXNzOGxqOGt4aVhSdlQ4a3ZDVURIZTE5NFhkYVZoTEJX?=
 =?utf-8?B?a3pYdDRPWHBndm5ORU1OaUhBOENmNzI2WHIveUtWdzhGSURSNFk2U0dxUnA2?=
 =?utf-8?B?MEZ6Z2tiSTRsT2lIMksrWUlITVpCeGRYMVJSNXZpYkJhVkxOQWV3dTB5NEFZ?=
 =?utf-8?Q?XJHxRO9Q/EjMYcZR/CRBnRHJu?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bcc27c0-876b-4a05-ac0e-08db8867e324
X-MS-Exchange-CrossTenant-AuthSource: HE1PR04MB3098.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 14:53:18.1370
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JdybJzy9/RnukdRkABwj1ctt/lrrzMSzXY5YGu472/SbYzeHwtEcAzo+DKJsgwR1hTfXryJKYZxrkmQWo9QUpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB10054
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b=5gzdLy1b;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 2a01:111:f400:fe1a::61b as permitted sender) smtp.mailfrom=LDuncan@suse.com;
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

On 7/18/23 19:28, =E6=9D=9C=E6=95=8F=E6=9D=B0 wrote:
> Hi Mike!
>=20
> Thank you for your reply!
> Do I need to submit a new patch to kfree_sensitive for 'password_in' and =
'usernames'?
>=20

Just submit a V2 version of your original patch, making the changes that=20
Mike suggested. You can continue to include my Reviewed-by tag.

>=20
> regards,
> Minjie
>=20
> -----=E9=82=AE=E4=BB=B6=E5=8E=9F=E4=BB=B6-----
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Mike Christie <michael.christie@oracle.com>
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2023=E5=B9=B47=E6=9C=8818=E6=97=A5 =
2:26
> =E6=94=B6=E4=BB=B6=E4=BA=BA: =E6=9D=9C=E6=95=8F=E6=9D=B0 <duminjie@vivo.c=
om>; Lee Duncan <lduncan@suse.com>; Chris Leech <cleech@redhat.com>; James =
E.J. Bottomley <jejb@linux.ibm.com>; Martin K. Petersen <martin.petersen@or=
acle.com>; open list:ISCSI <open-iscsi@googlegroups.com>; open list:ISCSI <=
linux-scsi@vger.kernel.org>; open list <linux-kernel@vger.kernel.org>
> =E6=8A=84=E9=80=81: opensource.kernel <opensource.kernel@vivo.com>
> =E4=B8=BB=E9=A2=98: Re: [PATCH v1] scsi: iscsi: use kfree_sensitive() in =
iscsi_session_free()
>=20
> On 7/17/23 4:26 AM, Minjie Du wrote:
>> session might contain private part of the password, so better use
>> kfree_sensitive() to free it.
>> In iscsi_session_free() use kfree_sensitive() to free session->password.
>>
>> Signed-off-by: Minjie Du <duminjie@vivo.com>
>> ---
>>   drivers/scsi/libiscsi.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c index
>> 0fda8905e..2f273229c 100644
>> --- a/drivers/scsi/libiscsi.c
>> +++ b/drivers/scsi/libiscsi.c
>> @@ -3132,7 +3132,7 @@ void iscsi_session_free(struct iscsi_cls_session *=
cls_session)
>>   	struct module *owner =3D cls_session->transport->owner;
>>  =20
>>   	iscsi_pool_free(&session->cmdpool);
>> -	kfree(session->password);
>> +	kfree_sensitive(session->password);
>>   	kfree(session->password_in);
>=20
> You then also want kfree_sensitive for password_in.
>=20
> I would also use it for the usernames then too.
>=20
>>   	kfree(session->username);
>>   	kfree(session->username_in);
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/7483deb3-2b69-37fa-28ea-fb54aac58ff8%40suse.com.
