Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBOXIWWMAMGQEHPJS5PI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 110655A594E
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Aug 2022 04:21:50 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id j11-20020a17090a738b00b001faeb619f6esf3913220pjg.5
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Aug 2022 19:21:50 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1661826108; cv=pass;
        d=google.com; s=arc-20160816;
        b=hRHZCpHE3qlxQfdHW/SOmzD9dIW1zjKJUqVL42wmLqn6cORS6L4z3018eK77jfEX+o
         Bs52xMEj3SH+DkL4hzb2ZF1rIyESaRiVkJaKeSRQ2WS+NIACryKZcq/rSr1SlB5JbqmX
         w+ZTvWDuMiMr4+MMgfThN8ZYftpuGmRoJ20N6s9mj7UbB8dgCrcHAPyob8Cz6U/3QvUf
         vyk06xIMbv+o5NBdeh2oeEDQtPHvYMj+p5sqw8iBl3yApWM5FyAk5yLi4s2lOGE1wLPe
         fIlJHwRfgwYApH5xi+b3lIizo0i1oSKYiNuW5kROnAQRNLeBx24+wvgQGj+V0G+SnxD3
         0fVA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=nrwAl7QDQJkxx99ROobw1OET4m2EeB+prCMonrnWnK4=;
        b=w74nn8lO4xrzYNwX17edeFBoSq0gfpUDt3VXKkzKJ+AvVjmdawFIWCQpEPB8hPIR/z
         1KVPYxZtL2DpLOUu6k2XVs1J+zqrgS0P65x1jLh2NfPBk2jt8Pv1aJ/EcJRls1MWWfLR
         jrxwJwhj1tc/hSq9t9OgxpJLWFu4bFc5FYpg008jk8W/v+GOJXrlF232gAkb7gm/KeGt
         XUNLqnk70d+CtkYy2Z6uqogFuTCwScaY2KiFKX5UZMMhKyzvlLQDK3J4Nyxx8K5pI8Bu
         bxFNBGrpE5aRFeLSiFkS+LPsssC8g7eiI8j9JkRIYWA4sdzioNAANzUSqBTJ8ugr06ao
         jy8g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=0I+gq7yZ;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=vUeh439d;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:sender:from:to:cc;
        bh=nrwAl7QDQJkxx99ROobw1OET4m2EeB+prCMonrnWnK4=;
        b=r1eAqog4w4Hy8c8KtHdo0nYFJ6fiEwcuDwEReqGaXdY/2VQDal16s3s10QS2GR4H0l
         ++2RhGvqSR2v6do74XcgGMeDVwI1x0jZQxJctS9meXp0oxArSe08FopBd3EJIjup8jrR
         xYhSjhkFCNK9QCVG/WF91Y8cBKZ8pAYN9743CMmaWqAjg3M54ZrLgK87O3mLCVe28QVZ
         TghkQeAyuAbkA4O9poMoPR1C2/MGSefXKwqTBnq8aUzt/Vw6F9fTdnU5S0tH5ggH5Bc3
         F/lowzQo9tomiNlpaPwNqpmNKD5Cl7uqatGb4LM5Xat1r20AG2IKo8d8HcC63Gix4EjX
         mo5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc;
        bh=nrwAl7QDQJkxx99ROobw1OET4m2EeB+prCMonrnWnK4=;
        b=PQl1uWAYWPuncZ8d4seoOrIrnn+vzcl9WD3toLjYw2W1r/6sHmg5bmmK2TzAMhT6Eg
         eCHaTrDlLKF9+h/cF0ozsOWfQgye4SGDSbBzDKbq3EMUUY5YfRLEx/ZpU1vWpGhkuFAG
         XfGEMolmrmKnzczFGLqigl86+FUVQzrmaNqLooqOpYHtlubxCvO4+a7XxkD0GahwsbK5
         5LFPZItO7d2pmxS3rUmE+2clxRH5F9zDnO6rzsf+LGDBPcJoIm3r+54QN8FjwtuZ3T6E
         V1BH/Y7kooK1YEISpoVINoJqUDLwDPuv3qACwojWuGcOz5585hCiDUTRnj8wCdaNWvAZ
         RVnw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo0iRAUNZH+dY7+TJ1LEPChVOwsukrRzZbx7+sm3P/0J2osO86M4
	orf0DH5ihQme0DOuC5uBENs=
X-Google-Smtp-Source: AA6agR4ehXN5/qZlFkbGVpSEPkeCHjD3t5T9bQ2apA+nogqKLSyvI8SwxxqWAkdggRC4AelDyqMQsw==
X-Received: by 2002:a17:90a:cb94:b0:1fd:86fe:ba3e with SMTP id a20-20020a17090acb9400b001fd86feba3emr15313229pju.240.1661826108262;
        Mon, 29 Aug 2022 19:21:48 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:428e:b0:538:2c07:9c98 with SMTP id
 bx14-20020a056a00428e00b005382c079c98ls2222352pfb.6.-pod-prod-gmail; Mon, 29
 Aug 2022 19:21:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:14c6:b0:536:f974:1bf7 with SMTP id w6-20020a056a0014c600b00536f9741bf7mr18889905pfu.27.1661826105898;
        Mon, 29 Aug 2022 19:21:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661826105; cv=pass;
        d=google.com; s=arc-20160816;
        b=aZEDlKILbZh8zDMlmV1bWdrF5iYInNayd56oDV16WDG1swjltZ2PeTM34nMxVM0vy6
         Nlx34Gqfs3dXu0el7LKGs2QMtqLGPUHxYxHs61mG7jWbZOT0vvyJ6TjQLvp8s3OwIY74
         et+ViSIoUpNAbymPngT76OLXTP3guHVILzQ28gdSv7ScnZK/vfPxnX3q0aK9wsUDVb4D
         RKgfPxsw7BSBeaK3anU6iTGh2kH/W57GKlu2rUib+lgAtXWA1r7js3xF4rOE5hsiYOK1
         5ILkN5Hz270BFjpJYu1Vcg7HIFa4LMSUQpbLk0sMtJyH6Nd+Jg4G5ML8TC5YozY21uud
         kmog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=ETHiy9EOZvhQqMD+xbvC3+ZLWoqt3ZCJjhaO3Q3S9hE=;
        b=ifqDfDpoEgdpeFd5ofn1Hh+/M0i6RDh6qmnVB6nyvz/FKur+Q09y0EZte32Do7Rpcc
         yornrnwIaCItyouABenW7FId43PZxrMVZNlLkhqj9576eWnlUnNn0gRbdSxerrjkzkUM
         CjvDSfCfWEEbryOg6uqG5cPaTF/WTowe5xmwbLPgvgF5MWdIrWIfVNFlRDmOPL4YAi+U
         Dt4Nbpz33hKATWfvxhAzA1Koq0jfkbXyW6s0mjm8A6O7Up11zVN+UO4HC3HpIhrnFULs
         li5SvmzGkZwKJ3xV+jFES/Us12dc2JYI+U/Q9fbvDmvdCE2N9NFWevu/pr0MqrMhLD5M
         zl6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=0I+gq7yZ;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=vUeh439d;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id z198-20020a6333cf000000b0041e0e935246si44511pgz.3.2022.08.29.19.21.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Aug 2022 19:21:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27U0cffe024132;
	Tue, 30 Aug 2022 02:21:45 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3j7a2252mh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 30 Aug 2022 02:21:44 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 27TLcOcv018005;
	Tue, 30 Aug 2022 02:21:43 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2042.outbound.protection.outlook.com [104.47.51.42])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3j79q3f6a9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 30 Aug 2022 02:21:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkJV5K77RHLjdqo3Pt8QUnlPYkJvcciPaI4C69DBAJ/seo58/FzbwnJVTHYaLwxZ2YAWjzoLjiznzuVkI5yn1IMVxAzbNZPMJR4Rx5v3CrvPFWQrOzI/d4f+imNSqotp4hU8bdOqdx1ax4dZyRhQi79OVqpc/rvbzhPrv6mhNwLlcLEK7F6s161YQ/MNdwyJUP1jSWPSF/8YoQaELwBUWqTzAu6dWJ7RSF9c5yLFuxhZNhowT1tK6PBDKfxHxExZ2mg5G+Dwq1wZVQadkw0ZhuX/dSTruPilKY/VRly05MK+a4l9dsbdDh8xD3oQW858hwAaDgPjweYU0RhxTL7Gfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ETHiy9EOZvhQqMD+xbvC3+ZLWoqt3ZCJjhaO3Q3S9hE=;
 b=aEcqwA3+fyOnjhK3DbGgWesv0VyKsU27JiLnXd4lRHCGrWnHDUxzZnx7FQsLrq1dCzfSDhuxZEHwEJxXT3nO/hv3zl37f4zEUyGvpaVKjkJz0Us1V4bGB8Mb6ki/VdJN2ri07+0oZn/EPveaD2vJ9FMMkfrKIzBYJjNTUMb/IYxx8rQR2E29yCGilqYpOU7kVWAq8L/xDy65cpUQgRoGDb/oDAyjCyC8sE1VXyAMSj/qzbg3sn6GtpxsGP25ssUwhb3HT3uUFst3CLQVasRHJGRLfb/FMY++oy18us4LUy9aY3rOatkQ8CU3aKG2weTgUezexbLDxUZypDGdRaAF5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY4PR10MB1463.namprd10.prod.outlook.com (2603:10b6:903:2b::12)
 by DS0PR10MB6029.namprd10.prod.outlook.com (2603:10b6:8:cf::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Tue, 30 Aug
 2022 02:21:41 +0000
Received: from CY4PR10MB1463.namprd10.prod.outlook.com
 ([fe80::9d44:11d1:a65c:c87e]) by CY4PR10MB1463.namprd10.prod.outlook.com
 ([fe80::9d44:11d1:a65c:c87e%12]) with mapi id 15.20.5566.021; Tue, 30 Aug
 2022 02:21:41 +0000
Message-ID: <9c5a4232-5933-35c7-ac5d-745138de49a9@oracle.com>
Date: Mon, 29 Aug 2022 21:21:38 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.13.0
Subject: Re: [PATCH] recovery: remove onlining of devices via sysfs
Content-Language: en-US
To: Uday Shankar <ushankar@purestorage.com>
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <20220811234028.3848279-1-ushankar@purestorage.com>
 <20220823213226.GA2605053@dev-ushankar.dev.purestorage.com>
 <DM5PR10MB14666AEF8ED8B55B35310917F1739@DM5PR10MB1466.namprd10.prod.outlook.com>
 <20220829200008.GA442899@dev-ushankar.dev.purestorage.com>
 <644defe5-2a33-9eda-ff7f-f600e635a48b@oracle.com>
 <20220829215122.GA546808@dev-ushankar.dev.purestorage.com>
From: michael.christie@oracle.com
In-Reply-To: <20220829215122.GA546808@dev-ushankar.dev.purestorage.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR18CA0041.namprd18.prod.outlook.com
 (2603:10b6:610:55::21) To CY4PR10MB1463.namprd10.prod.outlook.com
 (2603:10b6:903:2b::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4d2c47fe-d4ee-417d-1ee6-08da8a2e5fcd
X-MS-TrafficTypeDiagnostic: DS0PR10MB6029:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: suJnKBc/2ZAN7c0LycQSG3Dk2iOcIjN49KQ/+4MuqbkfF8Hamy0Yl0p7rqlOTafuVsMw/CuUu/M9pNoYjvmA/9VmmgXfiUFapvV+uhqYVf/9YNyQvrDRD9vYhtTIThGPm0kaIDCVTcNlUH8T1coK53eEFSF5N+ZaQSe+gCqD5tACQHSNoWkVitKXo7LJMoUi8aZ96U+50W0xpHdz61fEOsnzNNHl9l5pTgQr/j1lwgA61SDjto4nx02vMPYTOYXtGvZxXHNO8qtt43OMLH3j6a6GY+K3HgTUWQjRQwdzanHHIYfyLR3QKG6YT8N5fmwi+rgxkCG65kqGADeSM1s/wYdsd3qIiwWKKCWLv0Tam/t7yBpVSpKPi60Xv3hgnINIAJVid/XOdp1UONYl0BzrdNhkjLV+3EBGHaerSgGq8+KFeQSiR87TuRjiDwPjuK8z81+Sq0AtX+JxARLRw21+8NzL1wr/BuZ+KauR/QzWxvEw5b2X832DSu62QanZeg+7VMu3nkIGyqT9hihjjy5GqEK1WlrnJAerOnNUIlAkBXVrRRC3bJit2Lf/Nx3j/GYioQdZbsEmAk58SRwJ0j+597zeLw8gOJCkHfmmCZdcRxqpYnTSyYeoIO3FiU/IHZe6WM8lhItk+KNldep9Fuw05PJibU8neuS0RWhkV3CITp79BmTh2l2fYeN9YpnCtCRzCMoKqHWtnaQCLp920UK2esG8R9cO/Bt+P2ZdiIKRTjgRbJ1Zn24qxKeVd0SjVaOXOj17FBR9oI3IEmGoKwmOLg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR10MB1463.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(39860400002)(136003)(396003)(366004)(376002)(346002)(8936002)(41300700001)(4326008)(66946007)(186003)(66476007)(6916009)(38100700002)(31686004)(54906003)(2616005)(478600001)(66556008)(5660300002)(316002)(2906002)(6486002)(6512007)(36756003)(8676002)(9686003)(31696002)(86362001)(53546011)(6666004)(83380400001)(6506007)(26005)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmtYM3BaWnAwQ1c5WG5DZ3czWlJHaUhmMEwrbDJPMnYyamdCSHowcnNvTzRq?=
 =?utf-8?B?bUdpNUZKMFBDUnVzRTVMNzM4VGF3NTQ1bHpTZERMZ1pWNnF3MnI0NVcwaUJJ?=
 =?utf-8?B?N1piWmFnMVVWOWxuY0hEWlBtS3c2Yi9helhtNTlOSUtlbEtiMXpIYm9sZG1B?=
 =?utf-8?B?N1BxR1BOVzdsSG5sTlYvb0hTZnhYVzljRU5mc2pZMUg2VDlxcktza3ZvQlMz?=
 =?utf-8?B?TmxHNzJaNXBkQWxuZkFZRkhXdm9XQ2x6Q0VpWjlFbGhNMkpSZUdaaVJ1YVRv?=
 =?utf-8?B?V3E3V1VEV1JsckNFeUZIb3krY2tuK3hmSXl5UWVqdVcxL2JpU3FQaHBVazkz?=
 =?utf-8?B?bVlpWm45RHBXRjVxc1ErM2c0ZXd5MFp6Rkx6cDIvREYyYUFUV1AyRnBYMmxp?=
 =?utf-8?B?YjJnR0V5YXI1aU9zYS82Zmgzc2NtOVBWdkJWS2hEMmJNekFSYTZlbE5CcWtZ?=
 =?utf-8?B?R2VHQy9oQVdKMDhjOG5FaHJNU2lwaE14WFpjREhSUVFtMWRxWlhQbmVKcTdz?=
 =?utf-8?B?Vkx5QnE4bzh5SzZSVHh6M2ZIZGw4RzVEc0gwa0h2S3BXSldteUZoV3JOZEF2?=
 =?utf-8?B?VnpKZHIzVndwaHViVXhGQnRxNDVtSUNSZWZFaTA1MXB6T203aE9kUm9zWjYx?=
 =?utf-8?B?U2tkN0pHQ1R6bGJpb3lualZ4U1lzWjlLM3lxWHFtMzAwT0VBV2Q3MVZXREE4?=
 =?utf-8?B?eXBNRk9Md3lGcitPNURMblp6VE9CKy9kYzFwZHBLT2lmeStMVHh2UXRQRkFI?=
 =?utf-8?B?OXpwSVlvdTNzMXlJQTQ1cTIyRVoweHN1dCtQUGZ5dHo2b2JiVzJJdzJ0OVBl?=
 =?utf-8?B?ZVA1TXVhVzFzbUpxS2pheFZ6YlBaQ2I2Z2pCd0M0NjViQjBWTFBOZFBiaUQ5?=
 =?utf-8?B?aEtuY1NlemxzVWFjVTlXL291OGVWdFFXbHNqbjBDeVE5SVltdHpLMWFnb2Vk?=
 =?utf-8?B?ODA0QUs2NmZDdWhxREpJU1VtdnJQVk05REhRcHc3aTA3QVNWSXlGbHJXNWZ3?=
 =?utf-8?B?Y0NOa1NVeWZkKzZnRHlMMDRTSHNteHlRYU44SEhOcFZMMFhUQWViK2g0S0hL?=
 =?utf-8?B?RktsZXlnYTVzbDIrL2pGYyt2ZGtYQTJkRVgrdjhGUDZrYy9ZbEpiK3kwRmI4?=
 =?utf-8?B?aXUwNXZWWXpqandDNHlqWlhiQjBUb2J4VnhRTlRFd2Z0R3dyaDdPbkZNRktq?=
 =?utf-8?B?UGRsdlVtZmZOOW5qb2I0elVYTTAxWVRoeTNqNFRnSytxQUF4TnFPWlJmMWJ4?=
 =?utf-8?B?OXl2RTlyRTFCNDZYMXJxdyt1Q2k3cktoUGpZaFhZRXZucVBia3JwOE5MSHl4?=
 =?utf-8?B?T2sxcEdkRVJJSkN4NXNld29ITnZTdjlnKzdzQ2s0UWM1b2tQUEF3dWlncEtj?=
 =?utf-8?B?akVUU2grQkpCUDRZRE9VK2tFbkhVd25BU1M0Q3c1YTJBOU9scWowRklORWhH?=
 =?utf-8?B?S1JNZ25UQzZtWWZpck92QWpKaFUreDdWUHdTZkFsRVZMVHhaWkVLOEp2YTlK?=
 =?utf-8?B?WnJ3eTErd2dxY2tTdzR1eHl2NnVZVklyM3dzc3BJTGUrQldiNzg1dlVPaFR5?=
 =?utf-8?B?R01ZZm9QVEl5b2pxMVgxVDBvNzR5RFdBOVBjTHZHdy96MFFOQ0U2TkIxMFJv?=
 =?utf-8?B?UTlIUkpjbElVTnh4djUxem1XSTQzREVMTy9TR2dZcmxRenlJQk4vVVhJaXRT?=
 =?utf-8?B?NGNKVTJRQkFnMUZSZ2RObS9mc293SmdkVGVlaFVBbm5BMDVPOFpqM1pNZG5R?=
 =?utf-8?B?TVZmVEZBOW5kWXIyNUpjK3RLYjBqYXZteS9MSmtxWnpNcDA5VllYMk5pMzh4?=
 =?utf-8?B?MzNVWnRjZzh0VmxRbmdWMGwvekFiQlF4TlM3alhzci8zYmVIUm1GR3hBVlov?=
 =?utf-8?B?c0szRlpZeGFRMGI5SUowVWtXQlJsRTQwdGkybkdZeURTMlRtVHl6ckhraUZa?=
 =?utf-8?B?VjdqdEVhVURWYnZ6MEJtUE9MTXV1SWhiNXp5YzZ2dThvQ1VLMXRCYjJkd0Fa?=
 =?utf-8?B?clpITVJqSjNydy90dGNzenFRbzBJbnVyUEgzS0FUcVZLdEpjdW9vUDBFUTcx?=
 =?utf-8?B?aS83QTFpL2pXL3dKZWhkcWZaNzRPTWF2MENiSHFKMG94L3c2ZnU4ejNQOXl6?=
 =?utf-8?B?L2JER0c3Yy9WQ0tPUkw5SW9WandPVmZBeVlLb0RHTEVLbEU3di92WUNGVDBX?=
 =?utf-8?B?NFE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d2c47fe-d4ee-417d-1ee6-08da8a2e5fcd
X-MS-Exchange-CrossTenant-AuthSource: CY4PR10MB1463.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2022 02:21:41.0815
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XQLDSfPiorYsADcpGcu17Mfi4e5kYnhdR/IOU7yS7dlD2JlI5CqezRu8lYKOwYzx7H4AQqRtVeZpbsZcNKy5kZp05M74YpP+8me6K0TVgJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6029
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-29_13,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0 spamscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2208300009
X-Proofpoint-GUID: bEzmdscQZTfonOgsqqkNA17JKq_PC4JY
X-Proofpoint-ORIG-GUID: bEzmdscQZTfonOgsqqkNA17JKq_PC4JY
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=0I+gq7yZ;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=vUeh439d;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 8/29/22 4:51 PM, Uday Shankar wrote:
>> So we could just add a CAP_SCSI_EH_TRANSPORT OFFLINE flag to
>> the iscsi_transport->caps struct. When userspace sees that then
>> it knows the kernel will now do the right thing.
>>
>> The drawback is that we have to patch userspace and then also
>> get the the new CAP_SCSI_EH_TRANSPORT_OFFLINE patch in the stable
>> kernels.
> 
> Another drawback of this approach is that we are covering up a bug in
> the kernel, which is still possible to hit if someone/something besides

I'm still not sure if it's a bug in the kernel or not. I've been thinking
it's not a kernel bug.

Maybe it depends on if you feel there was a guarantee that writing to
that file was non-blocking. If so, then yeah I think it's a kernel bug
that we now do all this new work from that call. I don't think there is
anything that documents the behavior for that sysfs file though.

If there was no guarantee, then I think it's an issue with our design
where we assumed it was non-blocking from reading the kernel code and
thinking that was always going to be the case. If writing to that file
is allowed to block, then our design is wrong since we can't be sleeping
in that main thread.


> iscsid decides to write to the sysfs state field at the unlucky timing.
> Not sure how much we care about this. If it's considered a non-issue,
> then I'll put together the change you described and send it to
> linux-scsi as well.
> 
> Thanks,
> Uday

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9c5a4232-5933-35c7-ac5d-745138de49a9%40oracle.com.
