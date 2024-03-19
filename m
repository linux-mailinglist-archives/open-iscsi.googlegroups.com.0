Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBLGR46XQMGQE4BUVOAQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1273488057F
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Mar 2024 20:34:07 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id 006d021491bc7-5a1bf61ebc3sf3268110eaf.2
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Mar 2024 12:34:07 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1710876846; cv=pass;
        d=google.com; s=arc-20160816;
        b=aDfEUb0PwPjjMCMiL1eIBKWPd3eq/4KMG9ZrZvs1vO1QLEA1Q/8bfxb0Fm8wMYBuX3
         jABdGQlgqqhGLgtlnntq92t5HuzrjA9CY2kP0AuNNYhPZK36fjNp3LAU4yAVLos+NaCc
         lt40TScHFXjIhIPhqOi0UDamL/QRC6vHuorI/5kinFTH3R3aCuZIX6qIiy47YfGpW2Kz
         3/aqCeUwadXoVvydkJqbAV464OHqXcx53/BU+67iicvZIVG3+SX28yZPNKPclvfOYPca
         KNb9fITkrX1jWwJfyEVaA7kTLsgPqiiW0Oox6aQ+3rRM/qaNvIpVHkU/61UxnVikDfeu
         0rsw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=a8RmOyMS/xFQeP8HnryKecKE8VcTQ7qdzEPagf9ZXKM=;
        fh=bW5qgYQZT8Jm9aomx21ohmA+ZfOG7F9uiS2zuPd5u+0=;
        b=fuolDpQ+TQhkphDoB/vaY90RQCkSGgy9gTrfP5K4nbL5P+3v/gF/vwMQUjWY+XYVYW
         6+IFawW0Bwi4Dxe4OzZZ9C9f7i2qttxauKfhX6DFSPqtirH5f1dgLBHuQ+/w7Khxns8Y
         jtYI6ouWWQc3je0ywp/j9OmtrL/wMuR0ZUK/2u2N6swbIq5u1rapSZ5fsuesU+Tf8ZEn
         cLXylWscp/rGxx2zpvxyg3L5K6Jkc+iHm3xBWaRUWNFWCYQbBVDPjyDm6SIch6XXyLcb
         1tam/ev4poq1u2wFgtgNoetz2Jz1SPcpF3qkCOWPJGfRN1Kp+nDGM7YSk4DUKhjZrCZ2
         I7/w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=kqAXek58;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=P377N6cj;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1710876846; x=1711481646; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a8RmOyMS/xFQeP8HnryKecKE8VcTQ7qdzEPagf9ZXKM=;
        b=hwLrcs48T05jhlNJVUcTOqIymPS+k9WK1J7xjf/fecGd7XXhe8U97bK8gaERNPkfsH
         H8zJSBUILJ/HbZSba2vGgphWHRfoxwx04Gfsy/CuOVG3RM5ac0iauHK8UtUdp/3q687p
         UJoEmT/HUS1t27PtWi71IDFFhGtcpb7sC/Yhli2aTYvFKZM4GmzRFNfXWeCGx3s/Aajw
         4MeZGkvMw9URWCKKtarLlcZvhffMUBqnWLKXWiyjAii55Yb0WZ9ieGK/jzk8IfUc/KW/
         TsmSzMWmtzi4g8nn4qEn0VAp1yUkFn3neSoUdaTYd7N8TE4n1deFCxBCY9oFpqU9wVU6
         vAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710876846; x=1711481646;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a8RmOyMS/xFQeP8HnryKecKE8VcTQ7qdzEPagf9ZXKM=;
        b=vPX1CmQR2aW9ro0kyXYofUKJm8+5b5NlHN4Z0WqvppP3juglmuoJ7JDKokY5jRKVFg
         /1OrvXKDpPCgZZR47h7+evEINHSfKGIZKJazlnJJJBkymr2s9b0Fzhd/+cQ/9MJlG3Qd
         MTHMjBVgzaTbF893vDkrBOPgsLja1tDg7a2hLdbxogPZ7L0TMEdPTReXnJLWm7zc0gUb
         7qIcSY/uTDussQw8+1U1NaWzcMwFzdsmF6rN2QJE3+mYenbtJ/tUHtDX6uBCi2U8/cQb
         rbUYDvWiHe7kwTzOa575OI0Vvo9UJI1xaizyxJ0cfl/zGPnNpzQATsBbSgic36dBGY9d
         tM1Q==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=3; AJvYcCXK28LWsNWMfrgXDqMZWCftfFscACVOsz1tfeo17Prj59n/tWjpffS76tFSsScK9B0kC5wG57H2BBG3OWlpkWh8lDOjwGpUqLI=
X-Gm-Message-State: AOJu0YxCpO30HqxOXxzqtmt+Ml5f9vYqdaPmEAbuFjiDHKJ/9dceqvmN
	szTzPckIhMjPhGJX+gsgDgrMYnClyB8hpIrtxj4mAXI0gkqxRLMf
X-Google-Smtp-Source: AGHT+IF+vhTTuLWyhwbQekp7SLvdMEOSBW4MtSq3X0MtSDY7TlaN7ZibJ7gyAXxfoV01FTTx4JHzww==
X-Received: by 2002:a05:6820:2d43:b0:5a1:dd31:a38d with SMTP id dz3-20020a0568202d4300b005a1dd31a38dmr123674oob.6.1710876845713;
        Tue, 19 Mar 2024 12:34:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:b804:0:b0:5a4:8287:2eba with SMTP id g4-20020a4ab804000000b005a482872ebals753083oop.1.-pod-prod-06-us;
 Tue, 19 Mar 2024 12:34:04 -0700 (PDT)
X-Received: by 2002:a9d:7a95:0:b0:6e5:1e83:23b9 with SMTP id l21-20020a9d7a95000000b006e51e8323b9mr15404506otn.19.1710876844074;
        Tue, 19 Mar 2024 12:34:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710876844; cv=pass;
        d=google.com; s=arc-20160816;
        b=bKyynZDrQi8n4+IdQ9+9emg/mPbIaeM9Lw6iNoD791tcaPMYaJHX1PV7mugV7t4Axz
         fXi+WePPedoL8XuvA1k6Um9Y3HXmCyAskx6U5te1/pCARjpneNtgXTOqp3QfCei1Is/y
         eKkktW4td/ZSawc8WCIq8H8caBWiKul5/rSt777mFkoc9VcDZZeXz2+igwMk8Gikhf0+
         zWwJhue2idU1GfJ1q1ycy74oEk0e94ujcOk216Vk632pc3PmRFpYDnNPQpnJ+zm7KBBt
         o2blHAboE1LK1bmqlY95ummwgZtriRBgbqWdRESmt01BNa149Y4fsSn0e7D+zopJXJDw
         9joA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=9RVrRUTpHSFHNo7F4ObXo5zOI/dnUj/nEH96+fZbd6M=;
        fh=/5Xie3NaimY6e3T5dULVOoN1bcNI+9EzkrKAQLEtpiY=;
        b=ArZZnYa+PkGHTJ4QYTaXVVYsUm3hdRtd/Q+QMfcAePQHjeQ1ZEwMEBYyrtagTnDNrb
         qsApMk6qhB4TznT/Fjt4C9O386DHl/lSLrojJAbFWGHf8FY/XCYfefC+AahyeqJg3B83
         i/RUOinPQ1miPkGJembfFSShEYQr3sBuYMabC+YyUM32RGj5ktf9HHafpvVVOG9uOb3l
         w4bf+oNgsTgutGVwDDfvoy8AVwilPx7jbNpu5G6kcPmzfyc6rzXoo1xRx++DOG1Xh1jc
         tPqjPpAhPuKo3QLC4cKlUhbNEn/Hx7NA/1i+Hs4kp0lk0YjhOlEnfFUUY5ClBNT+uQzx
         pMMw==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=kqAXek58;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=P377N6cj;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id c22-20020a9d75d6000000b006e67e931ae8si726518otl.2.2024.03.19.12.34.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2024 12:34:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42JJE8go008968;
	Tue, 19 Mar 2024 19:34:02 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ww1udeekf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 19 Mar 2024 19:34:01 +0000
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42JIqaoh007503;
	Tue, 19 Mar 2024 19:34:01 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02lp2041.outbound.protection.outlook.com [104.47.51.41])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3ww1v6s2kg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 19 Mar 2024 19:34:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MtWtVEbLhnDxTFdaCs5Y72mW2kJX5FzFxF/u2bEtSEyZbua1is6AD1qnYmD3DP9pfJgxfOwzEHHgmetArvl8NSm7KViYDFJ6uzbPJQWwspk0+qJ571QVHp6iOvYtarZ/djIx1qlH5Y5mW3rfsTynpJ8fR+w1rxbWr3NQ0TQfZ96266q6zWtGbFpyLptjuwLyCWlKumXbh4V9CimZam4NPrjiOg3PAPTHxeWF33xI/kSposfaocFkcobyUafR4buCHuqJBrZrxyg0xysYuMTAH69bOciWAKL30I327iQptCoBdlxdMXw4VW8Dra/aaT5jVX/5f+pe7diu54bjgGL19g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9RVrRUTpHSFHNo7F4ObXo5zOI/dnUj/nEH96+fZbd6M=;
 b=HubOW/e/z0NyADCUhrhkecRvlB7YULwufThC9lh0E5rW0/Yp24uqrJUHQfI3XXaHZ9NrGFpu7qGJ/UdxAKJVBbF4ZAdwXhcS6YP6Yd/xa8xxKrA3iQfQaNJa9vCJ69ZC4ylLOOUYSjHRU0o0f3uCztlVoD11I6DV1agbrMfI1pwMMnc9mtXHlqQ1P9O/gbTalh/jiHGIk+ElGFffUHikLw2tY/11VNaOsejV2PXQrJnPHq++R3Fo/IPY2kL8Xmoy/wt0NIvtNAkqEIBHCt2F42gpLtZfMt4bswfBc8fo1xpDJVvLPBH+1Pfu4wAWJ6VJsZTbA5lSiqEgx3GNPiYhNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by PH7PR10MB6966.namprd10.prod.outlook.com (2603:10b6:510:277::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.28; Tue, 19 Mar
 2024 19:33:58 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::2246:144f:3bb9:60d]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::2246:144f:3bb9:60d%3]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 19:33:58 +0000
Message-ID: <6bc61553-6c8e-4705-9cbb-8e73d3f8c801@oracle.com>
Date: Tue, 19 Mar 2024 14:33:56 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iscsi_tcp: disallow binding the same connection twice
Content-Language: en-US
To: Khazhismel Kumykov <khazhy@chromium.org>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, Khazhismel Kumykov <khazhy@google.com>
References: <20240318194902.3290795-1-khazhy@google.com>
 <20240318194902.3290795-2-khazhy@google.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20240318194902.3290795-2-khazhy@google.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM6PR02CA0161.namprd02.prod.outlook.com
 (2603:10b6:5:332::28) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|PH7PR10MB6966:EE_
X-MS-Office365-Filtering-Correlation-Id: cc19fa6e-455d-4902-eadf-08dc484b85a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JkGbwlI4TkAlS5vKX59yeCYlLDp/QAakIn2Gk1n6+FDFewIqk9OqFm4+RB1SDxQBZygp6NayWs0spAph2OtFljeTIDJ00HD4S2+Qe8bOTarVTczP4+OD4My4dKsDO7SADhlPesDSPGvk6un2aRHBnryirSi1yuRBbGd2TnsE4tobMAoey4fVKDKf8/kjrn6MxyxtiUfrrAnvTgOytZxGUiURLATtKI+K0RPAn6m9SKfD0ickS3dUe+tU2hu/aGR4ewM69t7ncbRdxscwCDDL88nBMBWyfN/t3/TqkaonK3SWCZumDkc6HdaWxH52JUQ1x/GhJmASCcqejMCtilxDAkdeATP2ZjxyExjpZywRVTn4HdUzphOMvNykz87M0qTm9aOR9tJY3DatFqKpmiwEaCd2T0Zq1HVVuwGFLBunNDq/k0zmyNA4bJsvsZBQ6pg8tSseWfZ4KDsnA5R1cq8DAaGBLoozs55BqfWRRAG7ACRiGbaY+1EMbWQEojn9Fcr+LV8a25aw2Qr7euwdRjUSfJrt3l3BV+Qa6sV7pevl26MVWunXewIqRbOHJ9iGATNA+CCbne/mugTvwIl/o9Zty6Tq1WNIg5JAutwscOD9dzjV1CICr6+sm/7+Q5RHF7RNX+aVSkeibfre/oSU5DoZg+ORq2jfnvRhZbXEwzmZL+4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHV3MnJQbk5zOHd4NERpUFBtdTRnQ0NYTzJBQlYweTBrMjJGYnJzbWtWd0Nn?=
 =?utf-8?B?NGwzUmJLRDdsQ3NjQ0ZieWIrTEpaNkcvN2c0OFVjTmdCN1dwNlFicnl0Z3lZ?=
 =?utf-8?B?TWRGNFpGQ3RMdjQyT2JqMC9VcCtxYzdIeEYxV2xYa0pQWmhPRlZUTitDVDha?=
 =?utf-8?B?R0ZmckNDZ2NzMEI2SGhrU1BKRnVKRHA2RVBqcjc2SW56QnZhS0ZxMXhjNFUw?=
 =?utf-8?B?NVZXQzFvT1pNWGhmQ2NWOGd4VTVIaDB3UlVYSmowWDJXakU2MFdkQ2FkQUcz?=
 =?utf-8?B?SW1zQktZVzhyVDRKNkpzMlRPTGw5MU9pc2s0eXJDV2paaGJNODZ5eldFd0xL?=
 =?utf-8?B?cjFXL2ZTdHhCeWVld1V0aTEyUnVmTm5iRjNudGF4YTYrZTExM3oyc0plWHRa?=
 =?utf-8?B?U3gzZmRKTjhOWE5rVUJhLzU4VndaalVQWE9IYUtBeXdBcTRpMDFFNzBKaEU0?=
 =?utf-8?B?bFdyOVI0dXZZSlpiVm56YnFhYVlrUFlXYXdoS3RVSEc4VFFvSitaOG02OGhl?=
 =?utf-8?B?TnJGMFl3eVZZamhDYzNyQ0E3SHlRZXNYek5yc2xrek1YODgrbGFvL29wMTRr?=
 =?utf-8?B?TjVrLzZ6a2RwSW9ydHVUaWNFeGdvNGpwQklnUTB0enlFakNnYXZ5dExDMi9v?=
 =?utf-8?B?UnNBYzF1UC91eXNQNkxwaGJhbjlwU3Ztb3ZFRXh6RytHaWgwSGQ0UEhVKzRM?=
 =?utf-8?B?RmVnYUtVOTZUeVVHOVJ6OHRQdzVZbmczY3ZDUXFtSU5hY1RSbTkyLzE1WTJk?=
 =?utf-8?B?VEFMSm1meTBBcmZ3REZGUTM0a285L2JKSW03QlVYdWljNnJubUlPS3dEbTBi?=
 =?utf-8?B?R3piTWRkR2NybHM5TG1qMW1vVU1nSElLQ1lKZzExakhZZlpGZ2hWMVZoTWph?=
 =?utf-8?B?ZUN0QzVTY3V4OWpQeVZjOUFUNmJpWUc4OUFQSmwxTDFMSENsMlF4cmRNUnhq?=
 =?utf-8?B?ZDNHdW5udVB4bXdBVVhONUtCMXAxbWxHYVd6R212V3pFZTdPcXU3WmRQUStj?=
 =?utf-8?B?S1Y2ZUM4YTZ5Nmp4bVFjSHFqb2JTRjVQelQ4MkYvelZBMkpOekZmOGNJcTZV?=
 =?utf-8?B?YVpVWGtBdW80T0pWeGpkcmcrd29VQi9VL0JEYVdhbkJXZTg1Z2tZSVgzcVB3?=
 =?utf-8?B?VjdBTkhOTjZSR1k0MkpFZktJSGNwV2lMS2t2c3hBdVY2OEpzQklvbDUvbXpD?=
 =?utf-8?B?blJYNE1FNjJQbjU2Vk1JY0pNS1kvVmJWenR5VUNHTFpqb1kwRXpHdVpyaEpY?=
 =?utf-8?B?czRmNXptSkVOUEJpK1dBZldZVGJ2S1JOdUlyV1R3TjJyU2ZrWUxBOHkrSmlW?=
 =?utf-8?B?ZHFobWE5SkdSZ2RDRlFmRnlLUDQxTjEyeHdza29zbXB5dFJNZGx1TWc3eGc4?=
 =?utf-8?B?citkdTZpL2R4cUFpV3EvLzJpNG8zT21CV3VodHJFVVVYVzBYeGN5bFhMNzJl?=
 =?utf-8?B?b250WjR1aDFlcmdiV201b0FzSWlKeDJvdk43M3g1WEljWkVuUXAySFlCM05p?=
 =?utf-8?B?cFlnVHpLcmdFenQyblV4LzI0SDhVaEdzMnpLejlWS0ZpRHBwMkVxM25HRUY3?=
 =?utf-8?B?dW85eW00eHVMa2dFMEIwejBKbXVBeWRwV2RldDNKS2pOSWorNDV3SmE1b2to?=
 =?utf-8?B?d1BhL0VnbW9ZSTVNTnFxMnRCQzIwNjVzOGxBcU0zTHRTQ1lvZmZZclMycnFh?=
 =?utf-8?B?Um9lZGJNZ1UwS3M2bEJPbEJwZzYxdDVHVitnUXIrcjhyMnlYaE0vOFlSRVpK?=
 =?utf-8?B?ZVZLdDFXYVFkZE9rSXVtN1FjMXR1Z3JXZk0rM3R5TlBLMFNUSFIvQ0dTRFI0?=
 =?utf-8?B?aG82VWNUdVgrMFRTbWQ3ZnJHczJudUt4WDNWVytmOEtUZ1kvaUhFSXk1S21P?=
 =?utf-8?B?Sk92TkR2dmhHNjkxcnY5RElUMTJ5QlpjUUtFblZzL3ZwanVNbU05YTREZmhS?=
 =?utf-8?B?Q0pXNTc4MVhickRBRnErZ1JEVFlteHdvb3M0VHlGTUtrRXpJbXVYSDNEY3hh?=
 =?utf-8?B?UmZwSkFPckVadWtoZUErRVliNjV6bzZkYmZIYW9rR2RJVkYwNWhaL0VnZFB6?=
 =?utf-8?B?MFpzZHpIVWpmYmJ1cmFIYTlWYU94NDRvL0g3MkY1Z3NGSm1LOW1FU08zalZr?=
 =?utf-8?B?TDM4cUZtakdvL2dtZWkzL1J4QUNKcnBodmdac1hIanJSSGJMR2RIaURPQng2?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: M5O6R6YPJk5UmQqcecLgheehCVBd9vSm8eQ1JzYdSAmTFL+XZg+GfysUQRo3X0q5j61G29VE2beU41sznaw+BYQauWOAsqCIKAZnopklMrdtpmGfgidvp/bwUi47XeHhQB+DQ4cOQaH+H+dnTMf4t1hP+8BrXAu3PRqP8B9PNCa1BVgdUcP21eAsmyCIuERRxld1jm3dUsXuP1tW0SD4o0JF6+UjcArxwCl2EZKtV5BxKMtom0GUfxTpMhZ55Qv/+CpAHu0Cklzg+EJnE874EAb3HaaBp/1duwYCeD0HT24Gr1URUinh41481MYTEsJGwryo/o2b0pMjKHbmBQ8VCUsPOT8i6eIWLsHA+2j1SrdIB/ohU5oJrVeeVbdWWq08Crk/IVpdXXKdtis1e/K5OaZ5F7e/FjbBF2rkj/M6zXsCm8Z49hsP2LB6WbYAYpFk+21JLxznOnSLD+KxmNINf4WpSngXZtFO9Mp/BplVdZLvsvKCjJdnvu3qjMALUH/7L6yRPQ02jnVvIkmXijsZIOivygdqlA/4LZ20vL9hzIiZU/YJZNdhW6/nxyuVe6cf6+AUGUzMuDgBUSWy5mjeM3Hw+06iAwk1xDGP9HAqTk0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc19fa6e-455d-4902-eadf-08dc484b85a2
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 19:33:58.2753
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ij4FGLA1mitHFUBy4jgmttMA8sHqcIZOMAuFSFZPpcsCSLAWuxWDek2RpS+tawAXfmufDoy6ATazIFt2zLROY1a8SVfy/6Z3uTgt1ER5AIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6966
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-19_08,2024-03-18_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxlogscore=940
 malwarescore=0 adultscore=0 suspectscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403140000 definitions=main-2403190150
X-Proofpoint-GUID: yF5cwRY2V0_agWY60KmK2bKz6FRFQnKu
X-Proofpoint-ORIG-GUID: yF5cwRY2V0_agWY60KmK2bKz6FRFQnKu
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=kqAXek58;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=P377N6cj;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 3/18/24 2:49 PM, Khazhismel Kumykov wrote:
> iscsi_sw_tcp_conn_bind does not check or cleanup previously bound
> sockets, nor should we allow binding the same connection twice.
> 

This looks like a problem for all the iscsi drivers.

I think you could:

1. Add a check for ISCSI_CONN_FLAG_BOUND in iscsi_conn_bind.
2. Have iscsi_sw_tcp_conn_stop do:

        /* stop xmit side */
-       iscsi_suspend_tx(conn);
+       iscsi_conn_unbind(cls_conn, true);

to clear the flag when we clean up the conn for relogin.

3. Fix up the other iscsi drivers so they call:

iscsi_conn_unbind(cls_conn, true);

in their failure paths so when they fail they clear ISCSI_CONN_FLAG_BOUND and
iscsi_conn_bind can be called on the retry.



> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> ---
>  drivers/scsi/iscsi_tcp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index e8ed60b777c6..8cf5dc203a82 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -716,6 +716,9 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
>  	struct socket *sock;
>  	int err;
>  
> +	if (tcp_sw_conn->sock)
> +		return -EINVAL;
> +
>  	/* lookup for existing socket */
>  	sock = sockfd_lookup((int)transport_eph, &err);
>  	if (!sock) {

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6bc61553-6c8e-4705-9cbb-8e73d3f8c801%40oracle.com.
