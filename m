Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBVNCS6SQMGQEOEJL4HA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D82E748EDA
	for <lists+open-iscsi@lfdr.de>; Wed,  5 Jul 2023 22:23:53 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id d2e1a72fcca58-668719b8945sf109937b3a.1
        for <lists+open-iscsi@lfdr.de>; Wed, 05 Jul 2023 13:23:53 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1688588631; cv=pass;
        d=google.com; s=arc-20160816;
        b=BGhNxbiH6vfRU9D33Ija6jL79yegP9c44mK29JMcfEiu27G9u4ZWDP7AK7Us6E0J0f
         +vi1bIttQRanQFbMzNgeJK6MSS5478VVvGFCob6SLtL2z000/jRVM/68oS9dnekBZuc9
         eGPH+MJB5Gs0LchMg6UtzROFqQRkrbqW6M3+aRwRM3giBmYflAC7Noivz87LJnYxUz2+
         9nfe4wm3m0bgQ+FzkDsrmC4EvHBkwUtmnjGPupKR6z6Xf4g2TfD+Xc1xGFhi9SZVPArh
         hAIXn8yLAXnh/Behqm8mlzDi3ZWxZ4Gvr3VE3ZRC7ok3mbfJeuXlasWHFBsWRag+6U8+
         l8Sw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-language:references:cc:to:subject:from:user-agent:date
         :message-id:sender:dkim-signature;
        bh=AGa5zUI68+3l1I9yOqznR6WfX2/2XWgeOeR0HOWTxwY=;
        fh=YmsoM5pEdMgm9JoIdY4OFUhHJUkSBGa4VSgpWAKU1dI=;
        b=LcsEs6T81Hsx/huu6rG/blnp9LVZvzx3DaflJ+iYXvCpzM0fU/g76XU8BLGkb1nc8I
         h3ySZ1TdB2z7TCkp1YQv49bQhW7qsBfUSuwM0QgRHDoifdvy6sFtyTXscsUmqrgbSjaN
         VtYcq5Ymh0BnmuGMbhab7RkIzCF9RKiEe7loGsm/cO+DpPRj8Cz8ktm4YsTyu8yEMRvE
         bSmQ2BEnggw2LkMsyv6zZhFuQPneXVWl6zFZaKlIZQ4O8nkUu4Rwx1p2FzK1eFOr8N3e
         oCoW+bhAtPaT1fVcWaQaSp7tdaaZSrBIAvkHMUx5NQjUgj9R5iaNR/h6RCmvdriQnf4M
         X6Xw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=hCj69cGL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=vcnRolIP;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688588631; x=1691180631;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:content-language:references:cc:to:subject:from
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AGa5zUI68+3l1I9yOqznR6WfX2/2XWgeOeR0HOWTxwY=;
        b=WipT9WfmcBZiaa/e4ZIcKd+5CBVj7jBqN91/wmijQDRsZ1WvkfI4EmWJqXGJkdD4Rc
         KKgBvmAjq37xFxFNoUaPPlvq+V3FtrK4ESLt0yFu9ywpVk+8JiYVWN7A4JJmsfWWzV7g
         TDVBw8bvhKASlEIT95z017+aysyaZGOJyLQCWfY3IqCuMugV1jrLtnIqCefVf3ozIC+9
         tIey9ztkULa/4S9T7UMEyM1M7IC/QAbhxMrwG3YXfkPNwho0zCioNlUbJtyoTx8BN7Ui
         hIpNmtVsYvNg3AURQ3rEJGUECxxqdJPgk4vglIDHZ0QdPolRqz+buQahQTJZmuSlnBM/
         TDrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688588631; x=1691180631;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:content-language:references:cc:to:subject:from
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AGa5zUI68+3l1I9yOqznR6WfX2/2XWgeOeR0HOWTxwY=;
        b=XR8U9zf24abxQSWjusP3g+jlyqrjDrA7eyb7ZUQ/owMe3F7zdJwM6Cll/19j+6bflb
         rjVmNMRXrKErttE4/LkaImssaHRfVSVXu3DWUl0PaHLfQ6gsl+c7Na0MaeAFOfTxJu1A
         j5PVoXo53zFuWHX07uhWxvKDc28z9V0YwW+WhejUHOX2b8xdvRL+SnwjiIc+Pogw1RvI
         t5xeQjNZsLyRtAMGxDYAVjLdv4KPRKuR2cqW6wARLLwgUZEtcCfx81jZwOcMmOH7NYaq
         Zz7oTOvO7TR7grFQGF616p1HRLK7mcNdJJ6V/ou5ibDMbNCvauLTNelP0qkkI8fQvtZD
         9pXQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDy9jhAqv3BV0fLlWUJ31kiQlTiTBadNg3BKzACV1dmFWH9Cd9Se
	aFGEXI0naxyqBCKNyTbwcrE=
X-Google-Smtp-Source: ACHHUZ71ALlw7c0rh3OENKKG+C2RdsaQuhuMc8Hrp+Q4Sr2hKyQZqZ2lXwk/6btU6laZvkEXHBC7FA==
X-Received: by 2002:a05:6a20:1049:b0:126:42ce:bd41 with SMTP id gt9-20020a056a20104900b0012642cebd41mr13072063pzc.47.1688588631131;
        Wed, 05 Jul 2023 13:23:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:9ae5:0:b0:666:fa2f:83ad with SMTP id y5-20020aa79ae5000000b00666fa2f83adls7367pfp.1.-pod-prod-01-us;
 Wed, 05 Jul 2023 13:23:48 -0700 (PDT)
X-Received: by 2002:a05:6a20:8e27:b0:114:f824:67c with SMTP id y39-20020a056a208e2700b00114f824067cmr19324494pzj.33.1688588628538;
        Wed, 05 Jul 2023 13:23:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688588628; cv=pass;
        d=google.com; s=arc-20160816;
        b=udcTK69lFN/8u9SpDuVKvCxG1Vtx4n+OpRVT9YN+OUUy23OgZIkHevwQQwcWoRCIjv
         WzHPLP8JzgyiKcfxhs0RmTzvR6+514lslALZOSUjiMgf1Y7hKNn595fPPQtsJ9E5j0ew
         kUhTSuIbjq2kVrrEokPe2fhs28ckYYXkGNf+2H/c5matWny6QW1YnUfBQ8xyRmbezGV+
         LcZDvr4eX38e5x5x1C2YoplyEVSjNvrNIWKB6JtKGq2FVZA9GrqUxhz6UCCiBuWZ5hz6
         eGhVS/34YvoI8AIPGf6eVEG9OkXXDj0LoJ8jjH77EFJSh/edLZag6zNkF133S92+QH9c
         yi/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=rLbUApfGQtmWGP2aL0N7WJPq0cQhY4+YJe2sCb7d5NU=;
        fh=7SD3HZcPbIhvM7cd91JvJgP2VHUupAsuY/eG/iMo2CQ=;
        b=BbdaVT0ZoqUnKsGMco5/hRazFjkOSK6rZaKXLKvYv0WoQy0cviPs9qQLQ8OkmWEKJP
         BXyX/OfuhcTPkimBr/4606eWYE0zubVx2dSfQQBZsmRpN5MAw9t/KPC/dE6T6j9dF4hk
         yKoKD1S18S3Fky/+Xh0zVb0px1GRL9tg1VosvDFex98HaWTRSZOHI8Cnda/6M7Tzm3gq
         sDTYgmFezetznjgcw2bg+vwIS6giTozfQt55sP+6/EmC2pp9zqAZ1TDm6tZf53Yqg/1u
         W40PieXlsSDTbc4Hcxfx4LkBlffOrvkqc2xOyWOODi1ua4S8VpWBMsq9D1KyZW/KbhBv
         64OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=hCj69cGL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=vcnRolIP;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id q18-20020a170902b11200b001b8918da8d5si478496plr.10.2023.07.05.13.23.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Jul 2023 13:23:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 365JondW016694;
	Wed, 5 Jul 2023 20:23:47 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3rnf138286-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 05 Jul 2023 20:23:47 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 365Iiq6I033366;
	Wed, 5 Jul 2023 20:23:46 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2176.outbound.protection.outlook.com [104.47.56.176])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3rjak6ajt8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 05 Jul 2023 20:23:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EtOMStqVpXwQpWBSp0ZCJ/sifB554ag8OrKBsX8+Y9XpyS5aoEKNcwfwmePRlsUVVWwdIbkw2WgHj4yeuzrYPFpVuGAuqg2JsYlzG24gZ4Vl7uKUhJaQyhjDeqGxkZUELKGHs0r0jGsQF2H6S6z2H0dbl1QUU2pUYkGDYFQjWDnApkWSsrsB/WQn6APqNI1aU7QW1afVycUvPzVRoFlU3yjyK1gm3lSw73jBPdHp6EXzeuyHjzC98SO+NyZLkd9mCNaO/rNysaDVVrU0Yp47i5CzaHyHYZmq7QOwzNxUjawP69KhoI+GYyf8hdH1XGC2hSB/dpVuryb2Oo9k4hjR0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rLbUApfGQtmWGP2aL0N7WJPq0cQhY4+YJe2sCb7d5NU=;
 b=bZkKZ2RvH9PVTNpTJ/L5l3exOZ+UKpTd0GrxYbFyOSpXDIsihL8HW8mCSIHOBoh0uo+OjvCbHdfs9MyBl4yKejbKWTRE3b+IhmlEVHFY5v4Ts0XdWWrlqfda0cvQnAEqDUC7WVp+Y+t6uuZshr5qc9JekHc6uj1WHLoJ8vZY6VvqRHSYv93i6vd8P/qKEEN4DLkrRBAsg/Ivp1lV4u9bspg4MmFUlGzD9lZXK5JY+TeYupGXiJTrZ9rA7zigpyl5BpWH+V+DN+PRloRC8apSHR2PXZCg4EJbg4Cd/9kIB2oyFJs117Q/AfunegcBTHQzOAR6vgIXDljTitddvJfuyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by IA1PR10MB6195.namprd10.prod.outlook.com (2603:10b6:208:3a5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Wed, 5 Jul
 2023 20:23:43 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::f5ac:d576:d989:34fa]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::f5ac:d576:d989:34fa%4]) with mapi id 15.20.6565.016; Wed, 5 Jul 2023
 20:23:43 +0000
Message-ID: <d36c8301-6f2c-045d-afad-35ad3f0a84f0@oracle.com>
Date: Wed, 5 Jul 2023 15:23:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From: michael.christie@oracle.com
Subject: Re: [PATCH] scsi: iscsi: fix stop connection cocurrency issue
To: lihongweizz <lihongweizz@inspur.com>, lduncan@suse.com, cleech@redhat.com,
        jejb@linux.ibm.com, martin.petersen@oracle.com
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230704111521.580-1-lihongweizz@inspur.com>
Content-Language: en-US
In-Reply-To: <20230704111521.580-1-lihongweizz@inspur.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR03CA0052.namprd03.prod.outlook.com
 (2603:10b6:5:3b5::27) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|IA1PR10MB6195:EE_
X-MS-Office365-Filtering-Correlation-Id: a17dd66c-f721-4472-62cd-08db7d95ba4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sd8VhKYWT0o5S3ufg4Fd4CH34sC5tNTAYtRvOL7QySMqdR6YbPJzX71VeeSujwfSP52LK5iArZLx5CN3B0naXvsr3+xCmDyWhsNFGdJv5+WFRFqH+Wz3EcJn00rOo+b9YQHzA2ADN0Et8ARQI3gDQS0tVj3W9ecxSY+fmmd+H1TuiyAqNeAKzISTI6NCSO6XJSD0F+wlB6LpGyzRi02OToqeLUYoZWXFwQK1EWUyj1C1NfQql/ymTPnzb5I1EvRGMfzDdOv9NOseUmGI8UKkRAWtyMguB6HrDdTezMNAV3mVty99bK5DYr26z12Jbboxz2dlUbL/O6xql4AxAYkfTu9EBqVlFEt3XIUQfYpKyUHRy4m4bQ1WtVdXhCHpiZnjRPlh5qopts+ieH56eGJMDmq2OOGKrgYQV9Un/CYp6zJjsFjyNTMe4T2sss47AwQSDd2D6erYVr25PzWo4nNP3TT6zDrvf7499ymcuDLk5CKWgKTIVZGOBrPI9nfEDiGWMuFw+L+rCF8suIQjOObH32+/pUhVH4ptuX/u3Nv/WhhSuyRo0F34JKmLvDg05NMSFr568DQYUzBzV2N7l1I5LtfV/2r765PLb/RbvZSSUUnwhfNBwYz0esUlXL7+wNcz
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(346002)(376002)(396003)(366004)(39860400002)(451199021)(26005)(478600001)(31686004)(6512007)(6506007)(9686003)(86362001)(31696002)(2616005)(186003)(38100700002)(66476007)(66556008)(66946007)(83380400001)(53546011)(6486002)(316002)(4326008)(5660300002)(8936002)(8676002)(41300700001)(2906002)(36756003)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmgyYVJwTzhXaWdLTlBuT1hqejNFbWRnVTg4bmcxWWN2N05oZGdMMy81Lzhq?=
 =?utf-8?B?U3dGUlZtOEx4djh6TkFQVmZoQ0cxV3ZkNkFoWmlYVVJzRzREV0NuUGpXZVd5?=
 =?utf-8?B?TEdWM3BKblJVZ0ZzYlQzVE96VGhUZzJLcVBSOWszTXJrL2lmSUhsVlJHV2xP?=
 =?utf-8?B?OGVoRkNNSjY2OTNoNmV5ajRheUx2YSt1djN1NDJrWUxFcU1pUTA4UlVVdVJN?=
 =?utf-8?B?WWRkblNCbXpILzFqKzlXZnRYNkpDNDVVRDBFSnRVR1lVSXFoQ0FsSGI3Wklx?=
 =?utf-8?B?UjJiZXN2ay9WbmlTR0hzSVRZS3dyYk1KVU0rZEVKVHhHZm5ESHZLUWxUanox?=
 =?utf-8?B?NXBhQzVoY2VOOWg3bUxOSGpkcDRYOG5uS2wxcmFtc1lEMFpNbjJMOEhJM1dw?=
 =?utf-8?B?NzZBMUxFOXhwUnNQY3U1QTRSVkZBL25qTEp1RFluYmxBa3N3K0J3ZzVhV0FJ?=
 =?utf-8?B?amFQYkNqQmFDakkzejZhUElaclhnUUlJdlMxK2pZdHNZeGVnek9YUkxpTlNK?=
 =?utf-8?B?cGlHT25ZdzFtK2I5V0lkOTIzWmNmY3I5cnpVRHdvSnhCOHNMVHlwcGVsOGpC?=
 =?utf-8?B?UTQvdDlGdzJHa1J3ODZPR1BIcDhNQnNna0hPeEJUL0VqVDhwTWo5REtjdDkr?=
 =?utf-8?B?V0tmd0pJdkYvSENSNklTVHVOajR6V2lkL3VxZ2hyaTZzeUFaSWlic08yWU1o?=
 =?utf-8?B?cnVEd3JldGUwSThwQVNtRzYxY2ZMZVMxR0FyeXJGdWwycCtzMVJCdkZZaWlE?=
 =?utf-8?B?WFBpRHczOGlwS0ZaUTJIWURkcTYxNmpFVzR6UjRQZXFHSEtRRmhFZ1NReVhB?=
 =?utf-8?B?ZjhLQkpUVjVyUzU4T2xqMlBZU3J3dGRUUUNCVjlVVHFiV0t2OU1ha0xESzE2?=
 =?utf-8?B?MVpxdmJSckJMNGVuQ050bEV0aWRtK0xrRmRyaURONG0rWGNTLy9NSk5uWW9G?=
 =?utf-8?B?Y2swWVA1YzVKUFVmZ01QbWdGeGY4T3JpdUUzc3Q2d0lVSHdONkxTd3pBNmNp?=
 =?utf-8?B?eGpPeUdsbVZzRUFZbktrOGd3SHdGc01EZER6MEhWdzdnQTBGQ2hZSTRTOE96?=
 =?utf-8?B?NHVZQnhkOHVrV0pWK3U0eEk5SVdGUHdVME9jUnNuZ29VSStNL09hRG5HMGxM?=
 =?utf-8?B?UTV3MVQ2bDRiaEZ3aXJBd0F6OGNhM2d5NlhMdFBYQnRjN2IwK3lMbENKTHdF?=
 =?utf-8?B?bzFCdDdkUWN6R3BqdnEzdzhuL2RES2dFbGp6YWp4WjliS3p1T3hsMTQ1dzBr?=
 =?utf-8?B?MjcxZHVmMkcyWDJDOVNMaE1kblhvejYvSVp0L0xtSG1DcGxsVGpNUWJxdzU5?=
 =?utf-8?B?d3cvbzJ1OGRDQ29PcmQ0YmV5OEJmR0FlaGViWW1ZR3RqbEVvL3ZUMnd1WFBn?=
 =?utf-8?B?dnM0REV1RzBlMm9IMVUzQWgvcHhLOWNMQm14ZjIwVDJnMC9scmMwOVBFMmRG?=
 =?utf-8?B?a29TRjNjNTh3VFNwbERiaGtyMEpZTzlWd1hCQncwK0k0cytLcDFYTTB3d3B3?=
 =?utf-8?B?Zi91Q1J2MEl5cEdrMkZ3V1Z0T2l3Qy96Zll5UlJzcWszaGxSMVQxVWtBNmd4?=
 =?utf-8?B?ZnN3VmFHaXlDUjFyN05Uc3haUlY2SjFqY0ZiMXlEUDRFTjNnNzVMSXBTOHlx?=
 =?utf-8?B?Vk9NZjVSWUx1ejJyeG5zYytVZTkvR2NkL3JZY2ptWm03TFpSYWdVcDBHK05a?=
 =?utf-8?B?a1lsV0JJcjhPR2VaV21MWmF3R3VROS9nUTh5dnJTS1Zkclppc21KbW1aRE9B?=
 =?utf-8?B?Ulh5OWY0TkpOcGJWanpJOVNCcnI0WnFrVk1Wb0FYUkQ2RkV4YXJGRkpKQmZS?=
 =?utf-8?B?ZkFScURmSlBpdGw2a1YyT3JROEJRa1lzL0NyMTBoSzBmUDVFTTJZLzUwREJW?=
 =?utf-8?B?QjRLQWgybHdheWRsZFZiTCtGalMrTHdvWWViVzJ5bEVjeEZQb2todVg4am0v?=
 =?utf-8?B?MFRhWXJQc2FiWlRrQ2g0SDlIdXVFTUVTVzlNVXJmU3JRK29aYWJOdlUxakcx?=
 =?utf-8?B?ZjNtaW11TGR2UmlrK1NOTFVUcmtaVUhYRjUveFdNcGRaQ3hnOWtVdmRnUnlT?=
 =?utf-8?B?bGlCdnRHQUN0Q0IySFc0d0ZzYmxsVWhTTmozaDcwSjRzVmhyZ1RrSlhYS2JE?=
 =?utf-8?B?dFhNM3JtMnhIR2V1WDd4ZDdrZDVBazl2Y045TW5tckJONHFPODlwUGtlTUFS?=
 =?utf-8?B?R3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Hq2rozWnwGjpqbqqBPhjOLlH3ZRBeds/nC8J53U/eyl962s/S8zrTVsXQ81XtKx281e940mIQi0YyNtuiFbJU4PO6jvi+GOXEGFgmXyIUcVHw08VSwY+aQ+czF/nb2eB9CjjuAOGqgQ16PCzrBxG4ishedsv2SVusUml2IKHFYzRai8QPsU9L3Fe54uTJbQD+MtZHnv22XRS3VTt+Ii/NQCCjmQ/pbXX2j+X04T4Z+iZUyRxLyq+AWV2kRd8FFxuBslJ0zNy4NBNqlLtKo8YmZCzclltfDZg8OM56k+SCcSwipLnyWX5pHw3KgQOPx1ajFtFlqLovi4wjghudif95VX+mRu+TQgB67HICIRvJ+MVKS5hG0Jvcgbdx2TXGYLDVhf3pcrHM2kmC//GP2d4D4cLMj6Ugq3+m/JFhRQ+QYiVfLA+i0PRdygNH0YFw7YXqHSBZwqtu286HWHzTDIwVBjNUacmQ6SXhU8yb9un2P06zBCHwyYVQ0FND1ZBhZhMrHhNPFf3SCgCT+zdlO0Hvan0zziZoE61VlzHOn/zOcHUDVaavS4Z/q5ZQTU4RpKADc14Xo+SSIht/cU1DrcodPWBUfpw6TDQuVI1uUW0hCeAEIWsbzvyAy30sVrREKkuXIY0TieR1p8pW62y+Jx/3tD6IvJefvH3D22xX3iYIa1ePeNVZbxxkNkCJ+i4TrucGxr7OA5qBY9fpKHNSYD4xfQCFiwkK+RPDLBeJLfQiDtklszANRFBqBIQ27U8NKn0uKSPUcd47LeBYIdTHxwPL/7Z7cq2j/Boyh7Z3cQr9X3EdAnNmcOUlCnRmaMK2mTliITZS/VF98w6qkBs/pEzADTbzU+13ojvsPMrDBfvm9N8YLH2GzoSQeyp+P0smBLHLOtrvMmkUqeGJn3Xy41ScPKMl6j73yXYxbwQyjv11Fg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a17dd66c-f721-4472-62cd-08db7d95ba4f
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2023 20:23:43.3778
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +VQsJb/TFf0cWgLrdM9OhPxG9jhCIe7iZQSM/8ulf7Q2VlvMKFu+zJ/f/bzN1wM3hhO9oGS7oVFnSuD9uKIP04SNfGrDh0NUwTD4NvOWzlg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6195
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-05_11,2023-07-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2307050186
X-Proofpoint-GUID: Pza5_bCZvM_PaqImuNcFQM5alLlfYsrH
X-Proofpoint-ORIG-GUID: Pza5_bCZvM_PaqImuNcFQM5alLlfYsrH
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=hCj69cGL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=vcnRolIP;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 7/4/23 6:15 AM, lihongweizz wrote:
> From: Rock Li <lihongweizz@inspur.com>
> 
> We met a crash issue when iscsi connection was not stable:
> [ 5581.778976]  connection929:0: detected conn error (1020)
> [ 5592.539182] scsi host17: iSCSI Initiator over TCP/IP
> [ 5592.548847]  connection930:0: detected conn error (1020)
> [ 5592.548890] BUG: unable to handle kernel NULL pointer dereference at 0000000000000020
> [ 5592.548935] PGD 0
> [ 5592.548947] Oops: 0000 [#1] SNP NOPTI
> [ 5592.548966] CPU: 51 PID: 912890 Comm: kworker/u161:2 Kdump: loaded Tainted: G OE - xxxxxx #1
> [ 5592.549022] Hardware name: xxxxxx
> [ 5592.549053] Workqueue: iscsi_conn_cleanup scsi_cleanup_conn_work_fn[scsi_transport_iscsi]
> [ 5592.549098] RIP: 0010:iscsi_sw_tcp_release_conn+0x54/0x110[iscsi_tcp]
> [ 5592.549130] Code: fb be 02 00 00 00 48 89 0f e8 88 65 8b c9 48 8b 45 20 f0 ff 80 80 00 00 00 0f 88 e3 06 00 00 48 8b 43 08 4c 8b 70 08 49 8b 06 <48> 8b 58 20 4c 8d bb 30 02 00 00 4c 89 ff e8 49 75 as c9 4c 89 ff
> [ 5592.549209] RSP: 0018:ff6937f4283e7e00 EFLAGS: 00010202
> [ 5592.549233] RAX: 0000000000000000 RBX: ff347b03a4a4b478 RCX: 0000000000000000
> [ 5592.549265] RDX: 0000000000000000 RSI: 00000000fffffe0l RDI: ffffffff8a2bc977
> [ 5592.549296] RBP: ff347b063d49d600 R08: ff347b20bffeb878 R09: 00000000000003e8
> [ 5592.549327] R10: 0000000000000000 R11: ff347b20bffe9b44 R12: ff347b03a4a4b7a8
> [ 5592.549358] R13: ff347b03a4a4e610 R14: ff347b03a4a4b7a8 R15: ff347b03a4a4b068
> [ 5592.549389] FS: 0000000000000000(0000) Gs:ff347b20bffc0000(0000) knlGs:0000000000000000
> [ 5592.549424] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 5592.549446] CR2: 0000000000000020 CR3: 0000003a22610005 CR4: 0000000000773ee0
> [ 5592.549469] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [ 5592.549491] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [ 5592.549510] PKRU: 55555554
> [ 5592.549518] Call Trace:
> [ 5592.549528]  iscsi_sw_tcp_conn_stop+0x5d/0x80 [iscsi_tcp]
> [ 5592.549546]  iscsi_stop_conn+0x66/0xc0 [scsi_transport_iscsi]
> [ 5592.549568]  iscsi_cleanup_conn_workin+0x6e/0xbe [scsi_transport_iscsi]
> 
> After digging the vmcore file, a concurrency scenario was found:
> <netlink recv msg>          <sk_state_change triggered>    <kworker>
> iscsi_if_rx                 iscsi_sw_tcp_state_change
>   iscsi_if_recv_msg           iscsi_sw_sk_state_check
>     iscsi_if_stop_conn          iscsi_conn_failure
>       cancel_work_sync(            iscsi_conn_error_event
>         &conn->cleanup_work)
>                                      queue_work(
>                                        &conn->cleanup_work)
>       iscsi_stop_conn        <- Excute cocurrenty -->      iscsi_stop_conn
> 
> iscsi_stop_conn will be excuted cocurrently in different paths.
> Fix this issue by leveraging ep_mutex to protect iscsi_stop_conn.
> 
> Signed-off-by: Rock Li <lihongweizz@inspur.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index b9b97300e3b3..1da1083509b6 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2307,7 +2307,16 @@ static int iscsi_if_stop_conn(struct iscsi_cls_conn *conn, int flag)
>  	 */
>  	if (flag == STOP_CONN_TERM) {
>  		cancel_work_sync(&conn->cleanup_work);
> +
> +		/* There is a race window between cancel clean_work and
> +		 * connection stopped. Socket down event may queue clean up
> +		 * work again before connection stopped which will result
> +		 * stop connection cocurrency issue. Avoid this issue
> +		 * by leveraging ep_mutex
> +		 */
> +		mutex_lock(&conn->ep_mutex);
>  		iscsi_stop_conn(conn, flag);
> +		mutex_unlock(&conn->ep_mutex);
>  	} else {
>  		/*
>  		 * Figure out if it was the kernel or userspace initiating this.


Thanks for the patch and nice debugging.

The patch will avoid the crash, but if we are calling iscsi_if_stop_conn to terminate
the connection (flag == STOP_CONN_TERM) then we don't want to leave the work queued
because it will overwrite the state we just set. Later it could cause problems because
we should be in a terminated state, but think we are in recovery so we might go down
different paths and not clean everything up.

How about the patch below?

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index e527ece12453..960af1cba267 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2290,6 +2290,8 @@ static void iscsi_if_disconnect_bound_ep(struct iscsi_cls_conn *conn,
 
 static int iscsi_if_stop_conn(struct iscsi_cls_conn *conn, int flag)
 {
+	bool do_stop;
+
 	ISCSI_DBG_TRANS_CONN(conn, "iscsi if conn stop.\n");
 	/*
 	 * For offload, iscsid may not know about the ep like when iscsid is
@@ -2301,28 +2303,25 @@ static int iscsi_if_stop_conn(struct iscsi_cls_conn *conn, int flag)
 		iscsi_if_disconnect_bound_ep(conn, conn->ep, true);
 	mutex_unlock(&conn->ep_mutex);
 
+	spin_lock_irq(&conn->lock);
+	if (!test_and_set_bit(ISCSI_CLS_CONN_BIT_CLEANUP, &conn->flags)) {
+		spin_unlock_irq(&conn->lock);
+		do_stop = true;
+	} else {
+		spin_unlock_irq(&conn->lock);
+		do_stop = false;
+
+		flush_work(&conn->cleanup_work);
+	}
+
 	/*
 	 * If this is a termination we have to call stop_conn with that flag
-	 * so the correct states get set. If we haven't run the work yet try to
-	 * avoid the extra run.
+	 * so the correct states get set.
 	 */
-	if (flag == STOP_CONN_TERM) {
-		cancel_work_sync(&conn->cleanup_work);
+	if (flag == STOP_CONN_TERM || do_stop)
 		iscsi_stop_conn(conn, flag);
-	} else {
-		/*
-		 * Figure out if it was the kernel or userspace initiating this.
-		 */
-		spin_lock_irq(&conn->lock);
-		if (!test_and_set_bit(ISCSI_CLS_CONN_BIT_CLEANUP, &conn->flags)) {
-			spin_unlock_irq(&conn->lock);
-			iscsi_stop_conn(conn, flag);
-		} else {
-			spin_unlock_irq(&conn->lock);
-			ISCSI_DBG_TRANS_CONN(conn,
-					     "flush kernel conn cleanup.\n");
-			flush_work(&conn->cleanup_work);
-		}
+
+	if (flag == STOP_CONN_RECOVER) {
 		/*
 		 * Only clear for recovery to avoid extra cleanup runs during
 		 * termination.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d36c8301-6f2c-045d-afad-35ad3f0a84f0%40oracle.com.
