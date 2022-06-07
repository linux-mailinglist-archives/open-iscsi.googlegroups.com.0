Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBGPQ7WKAMGQEG6UUEIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3f.google.com (mail-oa1-x3f.google.com [IPv6:2001:4860:4864:20::3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 653AF540367
	for <lists+open-iscsi@lfdr.de>; Tue,  7 Jun 2022 18:09:00 +0200 (CEST)
Received: by mail-oa1-x3f.google.com with SMTP id 586e51a60fabf-fb4b11f54dsf4003960fac.14
        for <lists+open-iscsi@lfdr.de>; Tue, 07 Jun 2022 09:09:00 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1654618139; cv=pass;
        d=google.com; s=arc-20160816;
        b=SmOAU6uRQKXWbpsrSNUT+OGpuzIrjPnvpd60I2y/rn1aXjykAejJyw1Mz63ZD1rePd
         +hVlSXMnGISCH17sXs02hHgybMb01gSh7W6+nAd2uNfkC0t/LBTOHL/dekY/WFgQpgm/
         c3VoExCFdirYncip6/LaygGAnIgHKC3Bm7T72fafiFjhypgZ3949g7b4TYYzPpzak9pH
         g9Os7S6xqu2JsKnXlFqyqCU8S33PXd44VQJzRxXMIST6VfY1Y9P+1IN+G3lD7wtb+anZ
         KSAUGGe0vJJZ+bAItDuM5u04uWYT+rvhdBCGestCRjydbP6Kb199heJaHQoCKPChFknN
         eZJA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :references:cc:to:from:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=+ZcXnWOUbHG82mDe04cMGOUrvmVg/OJkcKeUnjJFE64=;
        b=lZCkdy4XOYP5ZTh7vzjpJJMfHqImu2L10yV8ItdhHioXYJH1lW238Bu8ovDATvnP01
         rwJl4f6UuRQd2jf0GtKwGOzvzPWCcrPmybS8G7bXZTBIJOTI5U2Ae06amal8UPVZi2Pv
         TmWmiiVmXNOjzOsm1ipVd8x4sOv2pcMZtzj1ljAdjl2TbejaR+aqKYblP9vrU7xGG+Fl
         pcdiIO5km/Y4lBsVb3mQBTtgIPdkz9/vGEuapn+GLfulK1Ly/6jqnZ3wKKQPg3ne7yZy
         ALWY8PA9ej4WcLDv4nE53w6hFKS4kabbdM1zA0bhqjzGyLFjnCUa5Y38bmvq9Kb4KYD6
         pZPw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=ZoLTYnIc;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Sc3+8Op6;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:from:to
         :cc:references:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+ZcXnWOUbHG82mDe04cMGOUrvmVg/OJkcKeUnjJFE64=;
        b=LCT/lFXPKOPoPshFvOmHBAGq1Hq+jF9jcAbX1c55oPC7ZyLAGnk1+CS8W467J7UvMn
         BwV/HS0qoSNQvqZerYoCHhg8H4q2g99h/QKNA5q/VvaDho5znPC/shtH2LsaeuP/+pbS
         FPNlvF2+3L5BFM7d4lkV0yAL9MX0FK4/JrwAVyd0B4o6cM4SEfI1VjpeLFF+FCt6xOQF
         fe//JRc5udbNsxUzqYQxojw08qMsctFF3R6k27AB6RrS/7ClLDdGGpsnOwg2hVhywjyN
         BuiPN49p8qovpTSaBGs/sx1g+RvcYN9bJRRMuEK+GsHRaLYvgZMBAy18Nrfq5p8Z6rfk
         A61A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+ZcXnWOUbHG82mDe04cMGOUrvmVg/OJkcKeUnjJFE64=;
        b=nCWPFQIB8IcxWKLMQEEmzatK7PLoirOyW6xCrhOcXL1lokaya91i9ufISkiUOcUVQt
         K3Iq1Oai7shI+6rypRsQDzjGdcieLI9rOZQm0ytz8Nz9jWYsNXjnOC+vXE5BLf71iIcn
         nMKu7goRxlR+CLXcycSDf3wDGgi97Fa2PesXh7kNKePHTm0E2OZ8JYVgSgKHwZGwo8lv
         yEmaQ97iPJzmK/MqLawJ0LHsCsAbJG6HdzK8k+gCsCM+cBI44U3cJL7OBciss0HR5sqW
         CmhHK5BW6Y8yXfeRihyGFlKJ/vC4qhG9kVZGkn30gzFFicu3vWXb69UHhbPGK2pFTb6V
         0yPg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530qnkcXzMKhigZLH/KSL3aKTMiXi3OWo8PCChOKhTqcw+JLFL8m
	IsC4iZe0fD9Oh9xYiMZoX+k=
X-Google-Smtp-Source: ABdhPJwnLAwzPOoYjrL9ETkhyS0xkHtsetJs9Op/B2tTrQJfvmqrdchOvrNCfJEM2jB94YdgwjButw==
X-Received: by 2002:a4a:e7d4:0:b0:41b:5ac1:ef96 with SMTP id y20-20020a4ae7d4000000b0041b5ac1ef96mr8765775oov.16.1654618139059;
        Tue, 07 Jun 2022 09:08:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:3c06:b0:fa:8e9d:2fea with SMTP id
 gk6-20020a0568703c0600b000fa8e9d2feals4975168oab.6.gmail; Tue, 07 Jun 2022
 09:08:56 -0700 (PDT)
X-Received: by 2002:a05:6808:11ca:b0:2d4:6861:2a9e with SMTP id p10-20020a05680811ca00b002d468612a9emr17884700oiv.114.1654617977457;
        Tue, 07 Jun 2022 09:06:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654617977; cv=pass;
        d=google.com; s=arc-20160816;
        b=K0ktccLJ4w5SGQA43cuyw1J6faLUgaPR6tcn8MucxKPY8Ws7rdfYLkEB3mL0EsK4ra
         K3U7BooD14rzF0oaD26FJOuqmjoRtxHxWW3jErcwaRZHp/JqAkIx5ChZCLjF/O6KgoJe
         79DCRs3pECosYLH/j1eZ1G+UnYSVRFIC5IdG+wQ0qw0O2RRCDUbUCxGGVUy3Kw9jcEcP
         sL+zuWv13CdRM2kGURv7f1G/EZniXI9qi68mzPpO/VCcXYcVogO+I6Rg3FRc2bIQ4rwM
         d4XQSmCq6F6mJjAppMD4sU7CgW5/ZhsuamnbBEuQ/VufbSCrY4b24JwW8XeIpTyIFcWp
         YfvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:references:cc:to
         :from:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=dKm9Yih7thkA3rr5KvQVIxINgWf12mG072zVUGTAZL8=;
        b=lBMf5cKZtiV+jDPb1qRACieagkWZ0cVweqnXFxMBp6oRU4UgiQe1KK3WNQsOwg1OVQ
         EZ94Wpem2W5llODVwhwy2Vx40TxYKZ08GEm1eobqiZHlTQAguYRdPrDf9KTHYNvzpVoe
         +XHBzcIQCI35EYZN7XMkdPr0Dkqc8Z8zT3KMZ4UShYNxH17Yi6fFZ3cu6WXwZUuBlGB9
         XYNQ72dx2D5eLhaj4K0WW+D/My3YX89ZyI0xEX68zFDyZLPg47HzY1oH/+nroib5XImx
         NQC0C4+6gwZcMFKMVaPW9unr/NN04MKTAnQhyqLiAwnSQ4N1oON4iD+Fkuyn62GfmH1a
         LOXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=ZoLTYnIc;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Sc3+8Op6;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id z23-20020a9d65d7000000b0060bade020f3si1008435oth.5.2022.06.07.09.06.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jun 2022 09:06:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 257F91wW005922;
	Tue, 7 Jun 2022 16:06:17 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ghexebmd5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 07 Jun 2022 16:06:16 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 257G0GEH020954;
	Tue, 7 Jun 2022 16:06:15 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3gfwu36ej4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 07 Jun 2022 16:06:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l12XxHcV2hOLVCSzPFzZYNJMsq+Gx0+LbDxTNTIq8+TDzDBs9NW2KllizEZjTBBYWbAlX6okDbDvLsJodYXQdEAyTzI+TFk88ZkSPkUFM7ADJS7QsYPyA6YunlG1VMGQv+gdH9sU21gx+7dxMCZbnE9tuZd37HfkMsoItFZfOaawhUDrAFiFR/juXCz8zrs8cf5M2Yu64ygmt4NjTxOhx80wwIh8S9ZLqZ6rSMzBh7vBI9+xZ4NZCEQjAhmPmq+1IDk0ecyC7HRgguGpAPFGcAE1VYaeWUxCThp9OqdbHPqJ9P7nmcLjV+je7OikDh3pLy6J6eE/M029+qbHk5DYEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKm9Yih7thkA3rr5KvQVIxINgWf12mG072zVUGTAZL8=;
 b=g4zFflXsUhYB9xZJWuAY2PvVGb5tUyc+l+JuifYw2eXaO7JKmyojaEpA5/Dj9ACai1uZ2XFbW/2vSruFOSAg7T7yTmp1hu/BUwLehUcZ6fMczETAVZHvNc8ihvQYI4but5ijrfYXR8i+CFDay9YFO5D1ZgNmBWIZbAB54aDlvPvVRkRajZEZIeX7ziKP/J2smZIC3NV9hJVlBk47nfsGXrqjJEnUq1RflBBQORNMIAj5KzRZTAy2wsG40xz90kxgfteO6JYGQj89UMYopNgmPgg5wD/yDQcJyB/j4uRyqxJ69GPSalOvOmliEUVHbSI7hljbxkfyEbvOIPMatleC2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 BN8PR10MB3316.namprd10.prod.outlook.com (2603:10b6:408:cd::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.18; Tue, 7 Jun 2022 16:06:13 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b%3]) with mapi id 15.20.5314.019; Tue, 7 Jun 2022
 16:06:13 +0000
Message-ID: <6a58acb4-e29e-e8c7-d85c-fe474670dad7@oracle.com>
Date: Tue, 7 Jun 2022 11:06:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
To: Dmitry Bogdanov <d.bogdanov@yadro.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, linux@yadro.com,
        Konstantin Shelekhin <k.shelekhin@yadro.com>
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
 <769c3acb-b515-7fd8-2450-4b6206436fde@oracle.com>
In-Reply-To: <769c3acb-b515-7fd8-2450-4b6206436fde@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR08CA0024.namprd08.prod.outlook.com
 (2603:10b6:610:5a::34) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 82c3b1ce-3c6e-4b39-6dae-08da489fa51f
X-MS-TrafficTypeDiagnostic: BN8PR10MB3316:EE_
X-Microsoft-Antispam-PRVS: <BN8PR10MB3316F34FEB2F268B5418FA3EF1A59@BN8PR10MB3316.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xc+SpJuuTnBz4B5T8Uja3r7RlUgur48uHSG0dNaRZvaUZ7QMCgP19iO2lWMpS/02YSpUdA8s2YNlkTqlO9rl0rrKUNx2ZFCFDT2nsDnJEZF/5trICSvC1DGMsO+OVJXpEfsE3jZPO8P6Yd3Eyxa4XqmZarrq7BDVxavbEbcQBwXZ/OpO/kaoEyNGO4Sxn7B6Ud8DMjFkqvy5yqnDK5VMsI7ZUHkIxZ/jg8LaMyKfDPPyoalR5g9spBARSIWZULgfLcgbJAkAgFFd3j9Ovw2nEooRb3c7OKaWQVJznyuKGcCWZ12ksp5EGh1KB2ZwV1UjmOin9wogSYmVBsnVTHA+WNVHvzrw5nU+uOMF4WKfmNG8scHvVYJZc9Q540aKjeFMvIF6+DqqI+m15MqWGKOMcQdNohbQ1wdp8YB9WiFbhIExopeNun05QVC7grIzOHG7+eD7b1pJVuq9/ZtEk0CuQXqb14ToOK8GpB4/OfG4UQUeY3ow4wO/A9/nmORhJ9al6UMsRrHmKF0eqlBPiFQjhUOACUnUyErW+ALEudkyIaSfyUJbvUIdv6pypr2/gLM2udCTV370CALIXWucKwVpz2Wj6nJG02CXbyYmmqAQXnef7bBqFpsb71T6VmdGvoVP3nTlW8bQ3aE+be65UTsZPjcOuJDqumNii/1CC9lIFQ6jtJo0RyikYex08VnVwBqGTZUDi44pCI9zElHnNKX0O2QLyxuDWCsvd7mrd/NItKcC0AMftvYx2vOz/mtHbgKBjY7Iw5B+N06PZdfbEuMjvltLZACtBhX1oXnsMliBv41E+RUzcnWuQ4uTEGnmlXxwr9h78ZRrmpk1yZDal2Rftg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(8936002)(5660300002)(508600001)(6486002)(53546011)(86362001)(31696002)(6506007)(966005)(26005)(2906002)(6512007)(2616005)(186003)(38100700002)(83380400001)(110136005)(8676002)(31686004)(4326008)(66476007)(66946007)(66556008)(316002)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2tTTGtCYmxIUFdTZTR4WTFiQkdLSWhSeXVBNE5VUHMzaFJzeGF2TDkzTUgr?=
 =?utf-8?B?SmtDQ1U2dk40akYyejFlNk50Q2x2Y29DSlNneW9QelhuNGFMeVFDaStNVXhh?=
 =?utf-8?B?bEtsTE9GaGdqUXpBdjRoeVFZaXdrYnJRek85V0NRcTlpKzdsVmJ6alRaOXdt?=
 =?utf-8?B?enFhWGtWUTQrai9tOWsxejdkY0F3eG5VOE9VSHQ3TUNtWmNZS1Rvak9nZ3dF?=
 =?utf-8?B?d296ejlvdGZvSEV5N2h0czlZUlJBQ1JiaDJDdkN4bUxPMWorZDBxYWhWOFJO?=
 =?utf-8?B?VlVCNHhlVVF4OUtKdy9PcEgxMlpkSStOSXpvckJmdEt0RHVOd3ZpdzNRZkRK?=
 =?utf-8?B?cmxNeFJpUFB2SndTeVUxR0pGM3hyakRwR0s4QlBGV3ZIN2dGUEFrZTdTb3Rn?=
 =?utf-8?B?ZDRsaURqNzE5UlcxOHZhZ1oyY1h4MW93eWl2MElvTlpxVVB4SEJHMVZ3ZGJY?=
 =?utf-8?B?SmkrczlOWmx0bFUwVVMxSURxVHF2TVlTK3JOMkN2T2VlK01wOXBmQUR2ZlB1?=
 =?utf-8?B?M2h6aHBYWEMwdUd6R3g4Ujl6My9VQnJTMFFla0VPUy91UGFSYVdOUk5zVHFD?=
 =?utf-8?B?WHFibGVDZ1YrL0h4QmdpQVNuRkVxcDRGQnNFdkZEekVJNkVoSWsxQ01oUlcw?=
 =?utf-8?B?L0tiMjBXRUJGTG42VlAraHlxaFdFT2RScndtUEFnMVAvODdUNStFWXFBRm1i?=
 =?utf-8?B?RTR2S1h2OFJOblJqdEtySkxnUjljUU16KzFPeTRnZHJURlBFY1ZxSWo2aWpq?=
 =?utf-8?B?UHFock54K0xEeFF3eWZESkROS2NXZ2luUTBYcFFOS0hyb08rQW9KNU5vbU1K?=
 =?utf-8?B?K0RpQk5vVkJJMlNXZDVLQktVdmZmL2ZRZ0o2bVFMR05oMHQ2dHlieVA4VHgy?=
 =?utf-8?B?MDljTnRGdHpsaHhFblVqNlR0NTJ4VHROa2hWT1NNaFd5a0ZoOThhUTZhUkxF?=
 =?utf-8?B?bTZDQlRKa2FISHByK08wRDJIZEFXR005L3cyQUhoQXVUTlB5bFl2UzZlOTNs?=
 =?utf-8?B?cXFIZlZOdm9HSldObFk4dkRNU0Z5cy9URC9GWW1hb2dhd05sayt3N2U1QWYv?=
 =?utf-8?B?Tm5pZTRBRWVvblpuVGNETVJXZ2h4R2tLREVBdUF6eG1BclBVV2MrNDV1dzNu?=
 =?utf-8?B?ZThxMmRKNU1rRFJsSXVVZFEvcHlKR2ZyUXh5OWJTaGxIOVRYVkxsdk5kMEtx?=
 =?utf-8?B?NkcxNGRvbUxmRjNITWhqdFRzb1hMNDhkZDc0T0tPYzRQcUZhWjk0WXRsaTR2?=
 =?utf-8?B?a0JDOGxEYW1XbXZSa0gvcU5DVFFLTlZmRGNOV3RydTdOQ0JVTFdSSXdRaGs1?=
 =?utf-8?B?VGY0emJiUnBZUE9hQlBxcFFKdDYvZ2N5Vk11NzF6ZUlXRC9oY1N1U1h5SUEz?=
 =?utf-8?B?UC90c2czVUwybVlkWFhydXlILzVMeXdSRmtxUnVxVDU5OCtuWGdGSEl1MWhG?=
 =?utf-8?B?b2xLcW82VFdnTExUSWhsR2QrSWZoVkVOeTVqOHpWNkVxVjhHSk5lSWszU2Y2?=
 =?utf-8?B?SEF2V1dOQ2lnSHp6VkRvbnlTZmYvL2F1czFhMGRrOFhYeFc5WVVkMDAvYVlZ?=
 =?utf-8?B?STRhSktRMUg0dnVGODFNaS9IKzlnMnRYenZxWFg0MEFKeU1zdkVvMVpnWklh?=
 =?utf-8?B?OUkvL2w3dm0vREhPcGoveHBqYlRJOFFlU2NHZ3Q4aDBCbDNWZ1lHK3FwZjVW?=
 =?utf-8?B?clN4eUhVa1BFeTN3UnNjSkJhRjRnaFhGV0IycmlaeXp3NTE2aitobGZSbFFU?=
 =?utf-8?B?RnhjOHFUaDlnbzNCdnozMDM2cUQ3RnFwKzZ2aEh3VllMSzY1MFJoL1FHdVJ1?=
 =?utf-8?B?Ujd3SUlkR1d1UktPRmdWN0thZGFUcjEyOUFRVDBNWlFSbEg0Nnc2ek9SYXBv?=
 =?utf-8?B?NHVuWVBlSmsrS1JVdEkzeUVVRHpoVnNIcysxejQ2MkJISGhzRkVlbkc2Sitz?=
 =?utf-8?B?Z2pLTFhySEdSYXl5YUloV2lSTWJhaGJUZmJ1cUZmaVc5Qm4vcGdxS1ZoMktX?=
 =?utf-8?B?cEhZM294dlZqSVltbFdZd3JwUEI5MGFFd3JDOVlIZ1Z6bzNOUVdnWFR6NEQ0?=
 =?utf-8?B?OGhOODg3aWczMzdwZEVqay9jVjBsZ1ZzVHdMWHRPOWU4a1FEbWYwR1hJS2lW?=
 =?utf-8?B?cGExb0J6bHQ2d3NhRlRsT0czOWNMcGhYL3E2aTJESmc5RzNiSHVwVzJCWHdF?=
 =?utf-8?B?dldKdnlYeDQ0cDMwOXRuYXpDNEhSNDJiSkNCSm5BRThCT3RiME9VRjlkdlFV?=
 =?utf-8?B?ZkE5UFY1VHEwdnNLb0ZvVW9hRDlWUTAra3FUdnhxMjhNWVdDZ2lMZjJsUWNH?=
 =?utf-8?B?a3J5YVQ5M2VQQ3dPR3lqRkZWeGltcy94VDJkUE1OM0FNYUU2R01yOHM0R0h2?=
 =?utf-8?Q?QygpqkYpYlt5lZ0k=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82c3b1ce-3c6e-4b39-6dae-08da489fa51f
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2022 16:06:13.4896
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J6OjuITyxgef/2mp2GpDJzbUyva+7m8Np5MrNvJGIQ1+DEOq/rUL0reJ5Co2Mw2XS4V/9iprlrFTJ4qDx8B4Y5JUtzZUojtkaN3eMdK0jnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB3316
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-07_07:2022-06-07,2022-06-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2206070065
X-Proofpoint-GUID: Ga3jLAV6xY48Y889T2-DnjkKrxAFJWF4
X-Proofpoint-ORIG-GUID: Ga3jLAV6xY48Y889T2-DnjkKrxAFJWF4
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=ZoLTYnIc;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=Sc3+8Op6;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 6/7/22 10:55 AM, Mike Christie wrote:
> On 6/7/22 8:19 AM, Dmitry Bogdanov wrote:
>> In function iscsi_data_xmit (TX worker) there is walking through the
>> queue of new SCSI commands that is replenished in parallell. And only
>> after that queue got emptied the function will start sending pending
>> DataOut PDUs. That lead to DataOut timer time out on target side and
>> to connection reinstatment.
>>
>> This patch swaps walking through the new commands queue and the pending
>> DataOut queue. To make a preference to ongoing commands over new ones.
>>
> 
> ...
> 
>>  		task = list_entry(conn->cmdqueue.next, struct iscsi_task,
>> @@ -1594,28 +1616,10 @@ static int iscsi_data_xmit(struct iscsi_conn *conn)
>>  		 */
>>  		if (!list_empty(&conn->mgmtqueue))
>>  			goto check_mgmt;
>> +		if (!list_empty(&conn->requeue))
>> +			goto check_requeue;
> 
> 
> 
> Hey, I've been posting a similar patch:
> 
> https://www.spinics.net/lists/linux-scsi/msg156939.html
> 
> A problem I hit is a possible pref regression so I tried to allow
> us to start up a burst of cmds in parallel. It's pretty simple where
> we allow up to a queue's worth of cmds to start. It doesn't try to
> check that all cmds are from the same queue or anything fancy to try
> and keep the code simple. Mostly just assuming users might try to bunch
> cmds together during submission or they might hit the queue plugging
> code.
> 
> What do you think?

Oh yeah, what about a modparam batch_limit? It's between 0 and cmd_per_lun.
0 would check after every transmission like above.



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6a58acb4-e29e-e8c7-d85c-fe474670dad7%40oracle.com.
