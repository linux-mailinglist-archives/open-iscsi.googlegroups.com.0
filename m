Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB5VR6WSQMGQE56XVBYI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0A775E3E5
	for <lists+open-iscsi@lfdr.de>; Sun, 23 Jul 2023 18:44:42 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id 98e67ed59e1d1-267f666104asf684555a91.0
        for <lists+open-iscsi@lfdr.de>; Sun, 23 Jul 2023 09:44:42 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1690130681; cv=pass;
        d=google.com; s=arc-20160816;
        b=PpeWDEtmSunNDd4N6/njW4ZLDomjY8+JP/e1xn4Zoz5gEtEix+2SO+39X6q9h7SLx/
         7ypXYvPh4AmjHjOu+ehFN9ScFVWzd8h95u4gp1wmzOWvcH8c1a/e4ugVHaUYGbofOPnz
         JL0iEPGjbIW8WAAyBX9TiDefzBplFqrPkP/ltqpvB6WAQQSiwpQPdKD0+r1HHtdt/ZAc
         ICQCc+FPVQ21Pf3qC4fpllQrMNm3k7e+Q6SDAZ81KELgaMqgrIxW20g48tD6qOvGiZWG
         iZW2UCL9BTfXlwnPhPFgPu1hZrjit7MPb0NUFlVj1HbFGANUOadadcYhRubZsgsA1c9s
         yZ4w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:sender
         :dkim-signature;
        bh=uClaicxmKjJku0NYfLL0gs15wsFj7i1tN3dwWJdHYgA=;
        fh=Y81tZJRsnyuZZ+86C7nsi4fVn+wmACEeVytEl8tq0/E=;
        b=oJ1CIHNw5x0d7h0QzuZUOr9i55sN48U9b3BIv7ludYW+hp+MgDgFWXApO3NRxAlrpF
         e9PBI+Dk2OLfRPgnL8/US80rdaPivzWps3pPSoixkqGg8tsbn6OjY9CCp/0su0CpqKbb
         5m28sJfXtuxfczzx/h6pdCea26yFNd36ne4GTKmU3P7DIwKAHhUR95Ss0dqwg7H5n+j+
         T+cZn3PCxH+vgBz3GrlySkRF5IcVJs/S7LmWPQmdwHCca8m3qU16fFQzxXV3PGu9uRSf
         BM/+AUxN5DI5q3UWTE3EdRjtKaF6l7OAurPHRfmHCv1jsjMv2c4MFAG3C3O8/nVbcp/R
         uRCA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=C9WFWFX7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=lX+0mUgK;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690130681; x=1690735481;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uClaicxmKjJku0NYfLL0gs15wsFj7i1tN3dwWJdHYgA=;
        b=H97k4D+ELlqa8X4N6aLeYArexY3JKl0RHxcDTJbVeh3179iWYP2fl87levJZLFRSzQ
         z2NLkOBcawuQDRjZoKuZEtF8AD8pnKEfVV93e24eyUx+R32qFmB4FE2gO6Ifu9PTX3xm
         h9Oi6wUJUe2XBZAWquv/8W9quB12ZRj4bDJXa647PNOQ1D0k3qkHo/5cHYNX4ufJL3eX
         BI1QSCmK6kM/JcWdvFLe8UXqhcGyOZX74C5wqiQ/1wAN2d+HUdXwmoKvPWD3tEL/Xoyf
         iZrjQtuQMZcaD4mQQx2fi9nEamlkq4g3ruVZD3arKO/e3hb/4WXnsTRRwS543CdvRscG
         q4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690130681; x=1690735481;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uClaicxmKjJku0NYfLL0gs15wsFj7i1tN3dwWJdHYgA=;
        b=N6luqEh7Zmut+/dBgSCZonNEQ4QC+IjMwo3nRFAQCFoF9yJfFCXz4+N7HZcVf7lkMN
         96vaxvchuXPjbsXHmxvWNLzTPvxOHE48wTlK/KiMrDzcpQ9S+I2uYAptzgVuj2xIYc4g
         Xu7CeMl+kvNZlOYdg8+89cATEuYa2RWMWZc9H+5ivT7REGf1XVM8L3fbZolOUSdblaaM
         QGps8Ox4E/Kfeyy1LY1RwcWQJNp5YTL8kQs6uuwErUNHlFQh/zhHyot2RJTmCHtJ6Ck2
         i20sLYLqXP6VVXQRZgxX8faq1udMAyI6wsrr9mmGgTF6Vh+OVwCD5Q1yZJTWM4VoN2hc
         Zjjg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLZGRMK8YU35mTONn1xta1DFv/Y3/O6vtGuHwmuIu+ZNGnPw9FYa
	e5oDeHJt5zE4Jsgf4a0HRy8=
X-Google-Smtp-Source: APBJJlFAaniX7ppqhTeAeFLkaDtoZYXA8tEaBfEtncJ4tGO+0j+56QmCe/jKho8N752ow/2o8esemA==
X-Received: by 2002:a17:90b:1d07:b0:263:3567:f99 with SMTP id on7-20020a17090b1d0700b0026335670f99mr10680354pjb.15.1690130680843;
        Sun, 23 Jul 2023 09:44:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:4a44:b0:263:25f9:657f with SMTP id
 lb4-20020a17090b4a4400b0026325f9657fls1200401pjb.0.-pod-prod-00-us-canary;
 Sun, 23 Jul 2023 09:44:38 -0700 (PDT)
X-Received: by 2002:a17:902:ec92:b0:1b4:5699:aac1 with SMTP id x18-20020a170902ec9200b001b45699aac1mr10796499plg.12.1690130677913;
        Sun, 23 Jul 2023 09:44:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690130677; cv=pass;
        d=google.com; s=arc-20160816;
        b=YvdMczG293fqFmdZiJycmTzW3nkMclevOJkmj4pylcyRt0Rn1AJDsje+5XHxdk/ZUw
         GinTJ3T+ahtoIKiw0CPTgakBnjS4E3v2+i1iHw6/oHr35dgrVUbfqUNDYQ2sgashaVZd
         8UeUvBrvi1ODbbTfALqk+Jtg5qJQnoKDUp8WTMjTyGd8CyjTW+5MVukqqAnFZRQ+O7jZ
         IQiG117v7uYYk/ZU4yU3wQtMkxg2s0UO/k75S0TxA9378ijXbghR2ly1MEmfpy93B1l6
         jZUED4ZOKTvpqLk3nS6KAssyOOJy4Ynz66jADBOBywsaKyd0/vLibhYoo3NohZmx+prP
         l08w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=5ACNaMSY3l7Dl8yc44PE9RSEwKZG0otHrrLfoinNdi8=;
        fh=Y81tZJRsnyuZZ+86C7nsi4fVn+wmACEeVytEl8tq0/E=;
        b=004w2UDHyow3hW9MgvEoIJXsZY4AqW5D6eonOSG4ZQYxYASUDnAoM5jGTXe7/5hTpy
         tp5wanJzsyiyv6XzuQhcQcErn4gupghAZVPKalJE3nEKLlKE3lngXrcntXxeCg6ww1rn
         STm5YZUiJdaOinpbVswaGcGcc5YVfV5WhBWQCoKJ4WIbLFDkanLrm6UonFQ3CPZ5I/3J
         Px065JYJP5/l6hO1yDSF2s8mpLikAeW+hFqW8ZmjfdnZntAo/7c7ZJ8D0ZUroAcoiI9l
         9Q9Shh+iOmi2q9w5CH7P7C9E9qTPxsjHKc5I5yJ6SiXFPeoASZ1i6jxvjz9qsZfHwHWX
         ZI5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=C9WFWFX7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=lX+0mUgK;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id n16-20020a170902f61000b001b8b3657d9dsi401556plg.7.2023.07.23.09.44.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 Jul 2023 09:44:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36N99wqu012395;
	Sun, 23 Jul 2023 16:44:37 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3s06qtscy6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 23 Jul 2023 16:44:36 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 36NFE8EK027601;
	Sun, 23 Jul 2023 16:44:36 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2168.outbound.protection.outlook.com [104.47.73.168])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3s05j8uvjb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 23 Jul 2023 16:44:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0tlg26uiskh1bLp5M8KYISUjIteewYQb56eAZ6NOQjLqeD8XxpjjA5lvdlYr0YpjCtUoEnt96lv+z0esGKF9201IM+AvnXeOzkUzuwZ1o0WRxeTXClqpFanDIAV8XbyBQidBNdnUP4u6YHquGK3XvOIhUaQ569JuseFy6Wz4nkxPFVcjp1Nktve7FhHr/6Y1psfuFdL1dPmbFD75OT4FO8M2wc0/RiIe+zYJbOG6eo2kusMkIWhluY+oOaR8939PdAKyJSMZ+nWCgRRNCACa630CgEpWxFQvD7p94V/UYFMxp2ueS0kIhyt7rXb1s0Pnbwzw4VErBiDnIoOk0dOWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ACNaMSY3l7Dl8yc44PE9RSEwKZG0otHrrLfoinNdi8=;
 b=RP4oY9iC8y+wGMXZ7OLUKU+P7XnE7z04PKJ+eLI9vzoJ9YwS7Y2sIuM2OuSXH5fhNqZ8E8wQHx6iURZmHjUIGN2yHszzU8u8uOxvvC4xpIaJLFEgP88jc28rsfrpMjwzNrJx2WcEiAOSEJoPXM9xF9igTZPsGmf3D8AQGwiTsoYAX6ESTr14DO0LNFjPbSMfCFCztdeo4PXNfVMLni8enF7hHMDg/J5ybizTsJkMsSaPqhWCyjMvYr/sMtXo0QNL1ONtSriFJwXEeusG5YGzB+v3x/vw7aimlvWB74u2XVKF1Lj9NvhemHLMusMXG3RnpHjfLdk55kCPclJWLf+H7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by IA1PR10MB6853.namprd10.prod.outlook.com (2603:10b6:208:426::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.31; Sun, 23 Jul
 2023 16:44:33 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::2a3e:cf81:52db:a66a]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::2a3e:cf81:52db:a66a%4]) with mapi id 15.20.6609.031; Sun, 23 Jul 2023
 16:44:33 +0000
Message-ID: <59d94e6e-27b6-5b12-d592-8f814ee1788f@oracle.com>
Date: Sun, 23 Jul 2023 11:44:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2] scsi: iscsi: kfree_sensitive() in iscsi_session_free()
To: =?UTF-8?B?5p2c5pWP5p2w?= <duminjie@vivo.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        "open list:ISCSI" <open-iscsi@googlegroups.com>,
        "open list:ISCSI" <linux-scsi@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Cc: "opensource.kernel" <opensource.kernel@vivo.com>
References: <20230719074534.5311-1-duminjie@vivo.com>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20230719074534.5311-1-duminjie@vivo.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: DS7PR05CA0079.namprd05.prod.outlook.com (2603:10b6:8:57::9)
 To CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|IA1PR10MB6853:EE_
X-MS-Office365-Filtering-Correlation-Id: 57d1d0ae-0e0b-4ac2-c70e-08db8b9c179c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 70AvSo+nzcjiLq7llk8NaU32wlp4Np5DyQmvzKzC9fNC9fqQPU+0EK+vLh/YRNEJnK9gaRFA3k/rDmwbx0i8XGMjFFSAgi6TdsB4EorVEnLWXpCdZC3tz3XUFNOcV8xivVygj5EXQHFri7WoaCzAfCIYZ5HmGu7YGF7/HhwUndhPYpkhiLh9QW2KTKkDeejOeBqlksqqIhicwNV8AlOvNJIVeA8jAtw95cFQCGBGx0WJYl7f8XAZ6VnqTfjSmrVfgWSwfu2APra90NWkHtigV16eq3HvS/TTOY+WF06l7dQFAFFLJX5clSYHKK5fpr8ecWg37QqD5PpEP1+pToKI/E94igeQwhjQsD9Zq5ZffeuCMLZtHrHLkbeBqnWZG65D6XOXTiFWQPKHeMQ7YILw2px4zoYkudkrSoESYMv/BhCp/4gFCM/DuxoFKc3uRbSIgjRNOnPBMbXE6vIjjZW4MOtHVaq3CCbcc7hq5/EPkXYPhmr6DwtjUF/mtBCdxrFEmSMaVDS0z6oOKwAIKP9CwYoSKX97DLMZVLSWUfDMjvhU2Raei8jhUPmFzx8uioPP2CoN7xoAyreivi6Xqt2fgjBoWezlRDzMhLiwW1ZF25mcz6Uz9thhKGB55krtqwjdbAMdWQm3K+RoGjWBR0sAZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(39860400002)(396003)(346002)(376002)(366004)(451199021)(31686004)(86362001)(31696002)(38100700002)(66476007)(110136005)(66556008)(478600001)(41300700001)(66946007)(316002)(5660300002)(8676002)(8936002)(6486002)(6512007)(2906002)(26005)(186003)(6506007)(4326008)(83380400001)(53546011)(36756003)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHpSWjBnc1BZU0FlSlJHYXd1WkJ6OVZWT2NaN0xSZmlOMDcrZ0NESmZzUlp5?=
 =?utf-8?B?VEVMYmVzL0hWeUtFdkg2T25EMXBzUmJsRXU3MVJoT29nOU5vZThYOGVhbHpu?=
 =?utf-8?B?RmdJMWxqM0p4aHlEOFVBMGZtbFlSNjlWT1lEbjVTODM5bWhqSTNMQldTSzRD?=
 =?utf-8?B?Nkt1SGhXTjcwYlBvTklQMHN2NmtwWUVRVFpDajF4U0M1TXBmM2IvWG11eW5v?=
 =?utf-8?B?djMyR0lWMWJEVHBiQ25Kdlo2RVhEOHFaMDZYTUFzL2xmTDcyMjM1VGdaQUlm?=
 =?utf-8?B?UXBXOGFXR0F5ZWQxNGZxbm1mMGUxNjkxQXJ0Ty9aRU9tdWxSeHlJRU5rUkhZ?=
 =?utf-8?B?UE1MWHZGS1ZadW00enFnYXlBMTN4ZmxMLzRHMHFKREp6NUpCQ0U1WVBVRzZ3?=
 =?utf-8?B?dXpQdEg3N2syeXRXNjJnQy9qcWlXdFNtSmc5eFVxOUtCa1NLVTFuWUdMYmJP?=
 =?utf-8?B?bjNIcDY2ZjJKbjRaRFhOS2huQVRHMFU2TVBmVXdNTCtDWVVFaEFsYXdYNURl?=
 =?utf-8?B?WjlUR056SVdKWFM0Z3JMMVpnRUxudzdVTWtWM1NHangvWVlTWmxHdDcrL1d2?=
 =?utf-8?B?YkU2RU9KVENNSk5VZ2c0bmU3SHhxOVN6aU9xUVRvWlBQN2tqYncxaEFZSVRZ?=
 =?utf-8?B?aU9saVZtMDRHeGRkYVdoNk13U1RFVjVTTThFeXRUN05FNlA1WmpSMVNvV0F5?=
 =?utf-8?B?QUNqZWxzaWFWdUZTVStIWTAwSVZKcUpRU3h3QVZXaGRiS3RHTE1ISGI3N2tG?=
 =?utf-8?B?cUgvalA2OUF4YUhQZllvSy80UU9haVpMdWpBK1B4d3B1VnhzQ0FQa2lhMW5K?=
 =?utf-8?B?VUlvUkFobFlEWHdNY2ltRUpCYkVMVG1WY3lDTUYrWVFmV3RoK3NHUXdTWlhH?=
 =?utf-8?B?TldrNWZmN1lNWVJ6emk5YkhKQzJ1d0Z6YlVyVlBGdUx3R002TFNwVHZvU1ZX?=
 =?utf-8?B?WmMyZzIyYVorR2c5U09TTUc5czRYd2N3b2I4cGhjTFZXYmthKzAwdmI3L1pJ?=
 =?utf-8?B?RGpGdm5NSVUyNU9tQVZjY1dDMHo0VDRJcDduQXFxUlVmSU9qbGtLVW1WaStW?=
 =?utf-8?B?RmdIZWhEeWY0RkYrZW5pMmovVmxlaVZpbnBabzI2TGppRHJ1MmFRSHcvKy9v?=
 =?utf-8?B?TmxjN2cxV1dSV3hFelErK3Z0dlk3V0twV2JtTXVpRXNWQ0R0VENIS01HU1lE?=
 =?utf-8?B?aXROQndFUWFQNks0cmtlSXVoT3FIbk44QlNlRmJQNThkL0UzelRpbnNsekFU?=
 =?utf-8?B?TTJrQU9zdDZRQ1JoTzNoTmZpWDZHWG1RRGxIcjdIZXQ3M3FlY1FmK3hPbHNR?=
 =?utf-8?B?WTZka3pINGFUTUdORUhDWHhhK2MvMHh4c1FVclhzQm9VMEdjdzFOS0g2dm0y?=
 =?utf-8?B?ajZVM1J2QmphOHhUT0xRNFVLSmcwNXlTVTF0Wnk1L0t3VkZMVXZTUmcyR2Fn?=
 =?utf-8?B?YmsyQ2ZoSWZWV3QvN0VzOU9BSU1Ha3ltSWQ4VEFrZHZ1QUFxcTdIUC8wazRK?=
 =?utf-8?B?ZWtOc3BGeEZuaFlGb1krQnkvU0NsSlNvUEpUYTBENUppMGJ0YncwWTloUWI1?=
 =?utf-8?B?eVBQcnUraWo3TnhkMkI1VDZKdWZnbFFhOEgzZDVTL29UNEZSU2hydkNkOXhP?=
 =?utf-8?B?ZWVHNFJVS2QzSGkwUmlHTmtxUVdlSEdEakJsQ0M0UmtBMWhzeWZyUWxJa0o0?=
 =?utf-8?B?WkVMaHhaMXhHYTVCa3M1TTRvS1pUQkJTWWE3Q1VBMWZVWXNEamx0b2RuMHJF?=
 =?utf-8?B?Z3Y2RUhGSm03aml0VU5oeXhWQ1hEQkJ2dzc0U2NlZnowQUpMdUR6TmgrdERh?=
 =?utf-8?B?bEhISUJBMzlZd25kY3EzSHhHVS9UdGtqRS94WnV2dkR6YmRscXVKdGc3RUp1?=
 =?utf-8?B?M3FQaFp5UlNkamp3NWdPTm9UUWFoVEt1SVJYMno1YkZ4VlMybEswTWUzVGN4?=
 =?utf-8?B?YWFsSjlMUmxsZ2lMbUpXcFZlVTY5Q0x4U0lheHBWOFhTT0MyNkd1ZTM1ZmQ2?=
 =?utf-8?B?enNBWWVEWFpCdzBjS1pKSzNyR1RWUmlhWnpGV2RSQnY0Vlp3MTNqVVNoRXNO?=
 =?utf-8?B?SktFUXhQc1BvV1dCdjNtd3BRTmxFYXBSTHVualgra09zSDNjak9yZlgvMXNN?=
 =?utf-8?B?MUVsTjZHN3RaWTBKQjZKeThTUndOa3ZuREdIY2dyVS9lYU9DbEx1WUdaOUdH?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 7a7SKy3rAm9nSoF5CH75pQQhErI5YIuFUTuMqYOvpL5ub6UWGr6ML9pGnfkYUSluafhPl/jAylqWG2LXGptUseXVKrI9CHQAN8V9XxMNS4Dy+LT9N6lBGlcdcyGGQ9+iG31Ai/BXnnwPI2mNoieofzq2gL1KjLpWruWi3AgKJAJhUyqApIlZodZGnuSMCy/HJpTS0IprxKUodL+zJoTRsY4JzF6W2px3HNdpDyUb+8XirHcCmSXywIk/PZNLJ5FYr+1kFU7XBMAWA8g1ER1Z6k+dCLRFRhzdzHPXBJpn9/olGtKLjvalYg5t9/5b1c98EfGjHnNpDUWEl7ZMVw/IqVpbbx0Ik4MHWCYTxsuG8MCKRNBAs98UV36s1Oc1Nc+hwjU1CtXbdXDImZra7AkfuLZnIXpuBlzDSB7k33X9SkMv4WdWT+H1lqTggI87VJZyN9S2KkyvrEyfab3qTDq8K+AF3+e4BceRIL9mq9CvB+7C2/+IglbBGIjIyYviQ42PpS/MFP8lNaKU4hsgrmlPeZwVYsiWTpgwJOdKwiyxhxcgw/gW0/+ZY0CKB5VEM6MA6kpA+pwvOgw8kOyWXeyYs8TKS510CvCh/zxyhUezerpBSq5UD0BkBzlKhyD4ZixZ8lAqtXVM+TEIxLdgi26JdnoxBlIZBdmdF1dLa5eoBHyq+twF0nAkcM5SJDW21YPAKqRCAIjKMN5TmzAiBgyOaNCuLlXPqQtXEpKVmfUEH90jyZRV6PuPWdCjWKqOVdhWAO3IRJnuAey1a1BbMb8WIHgCAL2gf7FTxd6WI/n0/8Ns1SCiDaV6t2zCV9wj7IHDyKBl7JE55Dj/4TywxD8pqtwNUSuDsgJn5pmiD9X5MhSYfrDSJ8JxRGqLFO1/3rWTCHEJgMMNdqrlXymspkaZM08ZG2Xgo56mVM65KoAkQLs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57d1d0ae-0e0b-4ac2-c70e-08db8b9c179c
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2023 16:44:33.1866
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6W4r2v9OpxXw3LBljUxj08W2BV9vyLRuB8LQKIUpaaIa15SLo11bU7a4UXpBdfqtJY8Fc7CHt/6Iwf3onrULgstkNQ8uDUF72c8Nof9LL2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6853
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-23_06,2023-07-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 suspectscore=0 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2307230156
X-Proofpoint-ORIG-GUID: UEQKOalMEk8FfEeZDaLxi6R0t30lOE_i
X-Proofpoint-GUID: UEQKOalMEk8FfEeZDaLxi6R0t30lOE_i
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=C9WFWFX7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=lX+0mUgK;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 7/19/23 2:45 AM, =E6=9D=9C=E6=95=8F=E6=9D=B0 wrote:
> session might contain private part of the password, so better use
> kfree_sensitive() to free it.
> In iscsi_session_free() use kfree_sensitive() to free session->password,
> session->password_in, session->username, session->username_in.
>=20
> Signed-off-by: Minjie Du <duminjie@vivo.com>
> ---
>  drivers/scsi/libiscsi.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 0fda8905e..a307da898 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -3132,10 +3132,10 @@ void iscsi_session_free(struct iscsi_cls_session =
*cls_session)
>  	struct module *owner =3D cls_session->transport->owner;
> =20
>  	iscsi_pool_free(&session->cmdpool);
> -	kfree(session->password);
> -	kfree(session->password_in);
> -	kfree(session->username);
> -	kfree(session->username_in);
> +	kfree_sensitive(session->password);
> +	kfree_sensitive(session->password_in);
> +	kfree_sensitive(session->username);
> +	kfree_sensitive(session->username_in);
>  	kfree(session->targetname);
>  	kfree(session->targetalias);
>  	kfree(session->initiatorname);

Reviewed-by: Mike Christie <michael.christie@oracle.com>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/59d94e6e-27b6-5b12-d592-8f814ee1788f%40oracle.com.
