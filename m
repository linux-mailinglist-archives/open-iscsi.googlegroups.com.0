Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBMPQWWMAMGQE7ZNITWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AD75A5979
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Aug 2022 04:38:43 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id c27-20020a4a9c5b000000b0044df4a6e6f4sf1875737ook.15
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Aug 2022 19:38:43 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1661827122; cv=pass;
        d=google.com; s=arc-20160816;
        b=DMQZPQNgAYLd+0l8cVhLKNZZ2Ar2PNaEJZV4BdjQwKYS8LQmRANULv3/g0sDcEn49w
         p5LZX8/OWbEkprFkwLxDK/wajChn5XkNIX+mBseFwTqmjigAsJF22Hta5DMKOAl8XAfC
         f6VlewQSC7biRqu4SM2UHOEKC6SupoIb0ggNWyBw02KEfO5BR7Hjoa9/pZIWCxk4Gysi
         vo7ge7X3Gx4PGolJMOXkOJI0uD8MaYJrznNDMiJ32i5zfkBKp4LbVEvAftla+JvXlW7J
         +5qxwywssacfzMmH4rYlEHaISKeEZr4LisKcFwXz9p30Ek+piNIspRQflE6IUJ1edePy
         45IQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :references:cc:to:from:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=gFOLf03idmCVE2qJyPuKeV+ok4Y+d2hY459NJRuXOYA=;
        b=FWgWhC/YbzrEKeCVb4aLNVlyiext1HyaNFKRVK8SQ3Nd9pypt1YWu5lPJcWnqG1s0b
         uuSpep3HU6nqWNK6WvmcxPYLfJs8bDi8bmMRdTzmS8OzZe4Cun1Eo7VcETq6fK3QkMug
         RBuaQCsc+rfH3Sv6g+ZcWY8FHqtKo3hTiU7/lrSr6YnZd5kYjuV7j5/4+/AEdc7Q9K3M
         8Dml4a8U606H8BdHgfTPX1TSDlIQfoq1CDOHIr5nNo4oA9HAz+ybBavEQk1BDMLhQlsc
         +Q5+/IUTVQpGpV1fzhz7XXppqFILcUCXUvJPYnmZhNwk2FuBIO3gxFGbBBambVwI5nhm
         ISLA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=hIuE2JwS;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Kh8ush13;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:date:message-id:sender:from:to:cc;
        bh=gFOLf03idmCVE2qJyPuKeV+ok4Y+d2hY459NJRuXOYA=;
        b=SN6BbzJS6qLHFzCMYmiK9N6oRqk8uBtqSqj7qeMo4aQWMuLCp5IdPsg8ZuwkuU5Oq3
         qBpPIBXiSq6e6Xw3LkdKKWobhuiypx/UX0p1STVOb9EkU6mHr74+mldOS3UBrCQB+3Z/
         GXBOSkCpbvM/vGQknkYE/+5/L3stEHocahfGxMu24NOnQSQQR2wg3WF9nV3Fq8g0o3y2
         ws62cxn86prlX4pCuQMf7BRhJmTcoMKIYoBf/puSK6rtlNQmLdZxe+BdRYscXTmpvqVC
         3SlvqYL3Z1Bp2qaeZ3799HG9qcrjbx+G4kIZpnCqIxL2x9ghvts/czQTNm9FlAFO7oJt
         5RBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc;
        bh=gFOLf03idmCVE2qJyPuKeV+ok4Y+d2hY459NJRuXOYA=;
        b=WHmt0UoUUWzlfle2s+MumHdvIBNkW+fgGLkbczcveE22jElZaAL0lg1wx2PfXE+bsg
         /lyN1O6gTzC/OKqA4zDlwOY6TJ04PCGK3124kXF94YFWj26D8OKT5D0NiCkxr2XnCzPa
         /BKFMpnnHXRYOvjRIULXptuQFvGGKrSNMWYA+uMBIs3khujn0x1hfNCqS9EGLMUqH9Co
         AGPRHpfbEukkRBEjLMRzzrFlPvQyVtJiCXYqpEoWpmcdGFxX1r7ZUFgMb1rHG1tabR0z
         AeZ6TeEhJjv1YodeW/nGPQYKL92EhpM1uf0AuL03zgrbfbxOUKr8NoGlXHPsHBtQuEDN
         rcGA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo2/aei6GGp1xn6bsOuJfSIIOsl5wdCka6hBmKnfjIbzwpYNgPos
	HATEDGfiRmNZhhfI7w0Ygs8=
X-Google-Smtp-Source: AA6agR6jM2upWhJNZB/j33ALVvoc2GanvSh4/kFvmxqAipWWp+jC28nPWhAZatzfG6lECh4QTvy3gw==
X-Received: by 2002:a9d:6853:0:b0:639:2702:bad9 with SMTP id c19-20020a9d6853000000b006392702bad9mr7886898oto.88.1661827122417;
        Mon, 29 Aug 2022 19:38:42 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:8d8:b0:33a:322:8c2e with SMTP id
 k24-20020a05680808d800b0033a03228c2els3089261oij.0.-pod-prod-gmail; Mon, 29
 Aug 2022 19:38:40 -0700 (PDT)
X-Received: by 2002:a05:6808:ec6:b0:337:ae28:d6a4 with SMTP id q6-20020a0568080ec600b00337ae28d6a4mr8366270oiv.218.1661827120832;
        Mon, 29 Aug 2022 19:38:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661827120; cv=pass;
        d=google.com; s=arc-20160816;
        b=0VbEaOwXhxzxIb1wVxocMs3itOfk4z8X7tsZlI40HDRJW8EFWqqG5tTmVjvkGnLKX2
         z/xQmNSLwJ9V+X1DUGnq+tvoAXZVElpALbT52L0UwkL1ChvogjSnLiJwDFuUBG76iIG/
         HehCIzXt81vziBiAFn7qHK5/mHWIWPyE4FqKZd7sCIMikjJbbPj1tE20HeUtVb2X4saN
         8kUyp2L7IPjtCKr5FwrrEU8Ekvacbrfz26eyLrqC2bv+bxKE2ivrxAPCwVJcpJ6N1TNv
         l9FSY+pGNH5hBK9L0PCTp0p1CLnjCu8bu+c7NhSBUy63sAPb3ylaOHadzr1gtQWtVYsL
         lHiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:references:cc:to
         :from:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=uvhWDGxfxGnVbemFrfZWr/BsBA5sYhlkv1ueHffg5k8=;
        b=hwNbCEoVED3ctrzueY7EE3DZVzxFhe/YGX+0KpnOYhGsIKs+gWpDTqQ4UZC5eeO50J
         QrDHqCN4FTOIxUQbUIH4oP1LodTBIgPAP7fBPFxChUK+hloKBvHRFX8CpJgIZWY6URKf
         BaVS112MN8Ebczuw2AyqiZOtSVrig7cUJfPpPHDAJvYT8DN8/AXbsViCWf6rQBTvtfaW
         NTihYc/YcR2dnFuPnI3EhTKl6jeQbTpfy+pRS2shCUkMoDEdHpvBYRXVaxROpAJtOrxM
         GwQOeuVOZYrtYbWBikEUIs3W6miN6+aCCSL2gvqRjrYP/THEjwIDa/M7wsQC9zCZV1x/
         uwuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=hIuE2JwS;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Kh8ush13;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id 31-20020a9d0322000000b0063948a79f62si389320otv.0.2022.08.29.19.38.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Aug 2022 19:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27U0cfTX004201;
	Tue, 30 Aug 2022 02:38:40 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3j7b59vyxt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 30 Aug 2022 02:38:39 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 27U2JPDE038254;
	Tue, 30 Aug 2022 02:38:38 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3j79q9gcs6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 30 Aug 2022 02:38:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BMt72CvjHZJhtwDsVnqoFRpmjKpg16702tecvxWvyNUjTmEBsPeyxQBmqe6xlbpPDXHjsBPcDsGWgocY9arJTZu3JivkgoXPI4q3D7n5JpFPOPl1aufuOGCuHbE8YhG1Z7eTfWyksBm0Fq9E/Y+s+WL1meB4mlabEnZRyJVR6OtH4eA8hJRXhKCaG6EJp0bTA1sMNXViiHHwvVBJntC7qjoGxJ089AiMZJBGT57ikmrsK+x5pkNzSMiz5kKBwjVb3xSvBvJ50/Zg1+ziPHTXG8//1H3UmoOQB3l9X27jnWhsGNz1yQjdAAv0evNIAQ62Vzh94GRYwHqBnTEgoCfimA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uvhWDGxfxGnVbemFrfZWr/BsBA5sYhlkv1ueHffg5k8=;
 b=Yg3YdyM3G3kS9bzZmXN88czhHCMRZLgsJtDqBp3LDa98k96gT3zkQC1mmMr4PT7MezwdpzkhR99MbYkxsj6PCuznsQJmmFBxcmJ0NMRU669We6M27VRDbX+4GeKssZ9PYxzQXoXcamcE4FLUOs5XqQRpBgbTIcO0gvcXL9i+UvMHnD4NgullSjdmDfL8eIEg7CtUzvENI5LW0T1YHAHlv3cb2F0O7PFtl/w4OdkMJTIDGGeiA3VIN9xqHmZhQcNOjWEDXzQ0NGCByk9Q9lPrlSGET3vzqBF0NJiwl0biHIfo31+D69NSBmuPxzfcH5yTkXB3yDJqOS8ZC0Bp0kP82A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY4PR10MB1463.namprd10.prod.outlook.com (2603:10b6:903:2b::12)
 by DS7PR10MB4877.namprd10.prod.outlook.com (2603:10b6:5:3a3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Tue, 30 Aug
 2022 02:38:36 +0000
Received: from CY4PR10MB1463.namprd10.prod.outlook.com
 ([fe80::9d44:11d1:a65c:c87e]) by CY4PR10MB1463.namprd10.prod.outlook.com
 ([fe80::9d44:11d1:a65c:c87e%12]) with mapi id 15.20.5566.021; Tue, 30 Aug
 2022 02:38:36 +0000
Message-ID: <e5f7ba9f-8268-c0bd-7a60-f702157ab6a7@oracle.com>
Date: Mon, 29 Aug 2022 21:38:34 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.13.0
Subject: Re: [PATCH] recovery: remove onlining of devices via sysfs
Content-Language: en-US
From: michael.christie@oracle.com
To: Uday Shankar <ushankar@purestorage.com>
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <20220811234028.3848279-1-ushankar@purestorage.com>
 <20220823213226.GA2605053@dev-ushankar.dev.purestorage.com>
 <DM5PR10MB14666AEF8ED8B55B35310917F1739@DM5PR10MB1466.namprd10.prod.outlook.com>
 <20220829200008.GA442899@dev-ushankar.dev.purestorage.com>
 <644defe5-2a33-9eda-ff7f-f600e635a48b@oracle.com>
 <20220829215122.GA546808@dev-ushankar.dev.purestorage.com>
 <9c5a4232-5933-35c7-ac5d-745138de49a9@oracle.com>
In-Reply-To: <9c5a4232-5933-35c7-ac5d-745138de49a9@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH0PR08CA0023.namprd08.prod.outlook.com
 (2603:10b6:610:33::28) To CY4PR10MB1463.namprd10.prod.outlook.com
 (2603:10b6:903:2b::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dbe81c4e-749f-41aa-5bd1-08da8a30bd17
X-MS-TrafficTypeDiagnostic: DS7PR10MB4877:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jwqcafi9HcVdIkNar60hUOO2dA1/wEZGcoz3+pdW0lZzVf5EJrLrUqMkTNhQcMU6Lukil+BLd6aIvd1f95xAC6kpZPNcXfqXI/sQmDqY0FZ7WcsBdqlccE9pQJkHmkk6nUOGIC49omZg4TGEEhx1R5x5QfpXf7vzTPDCtel3mP+kmA18z+kqpQi5X6ZlHRCnfLMCRmdSCk9mxDpGTz2O9oHA+PNZef0wfIvyJbn8/J6NsERRB/XekiAJjHQAOK8mBgThyxI4bGiwTUQ55edH+axlVcwNpQuRJG63bJwxaT1CwIodYMySEiidJvYewXgf/9i+wbMwbtF1O/5St83ly8pud6ese9zNN5j1FQttWS6jZWKstcaiLmXYn6fvRg4oBsVe4i6i5X3VatwWWckrJnEFRd/rpO4wd1v1MFUgfI5l0CqDhiqGbJFgzUkVxmtVTVh7s4mCHYBCZzfleDpBa/MK4NS/XOiWjXXcuhrhL/QondFU7LHSovNRO/sXxnKBJ14FlzYV/zuQPZ42VtaxTPmWbxamSu9mo40k7yCy402UL9nw425Qgv+ChIxm81tcG3hZiK/epyw0GiTanKZ/s30K055h28O3b0JgTjIOwx6sos0kCAevJIqiYnSck5sFZshV05K6dYzXJAgJwixbvdutVgLgB5AHaB03kiI4Ou32nBwEfX/Tv4wwmjTm0llyeOJnrYIh+CT4vvzqiRbwH7VNmSk6CF2k8QHH0nN251sKM5OKgiTsjN4E9oTp3esEuwpw8nVdXrpIDdIZAGnXpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR10MB1463.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(39860400002)(346002)(136003)(366004)(376002)(396003)(6506007)(38100700002)(2906002)(53546011)(2616005)(186003)(9686003)(83380400001)(6512007)(6916009)(66946007)(6486002)(86362001)(8676002)(66476007)(66556008)(31696002)(4326008)(316002)(26005)(31686004)(54906003)(36756003)(41300700001)(8936002)(478600001)(5660300002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGRLWWpzMm1qWVhnYVg4YkxkRFpjK09UV25xK0hqRHdKSXlVMTBGWjJXcWVW?=
 =?utf-8?B?Z1FWUHI5ZUU5MmJWcEhRc3dpeEkyNEJsaldFTkI3cU5ub21vNnRiOVZIdlYw?=
 =?utf-8?B?VUg1a0drWUpvZmRNeXpVYWs4TFdoeUw0c2pFdmVBYXdPaXhTaVo5d2ZFcnhz?=
 =?utf-8?B?c0U3d3Q3SFhwdnVmdFh3Z1ptVk5vOGplcksweG9RSWNEODdjOUltM1FxWlhl?=
 =?utf-8?B?VGlIOXY0cDZybUpxNXMydzdpaFV5bWVIODczc2tSamNMMUlRdlpTT294eXBC?=
 =?utf-8?B?U3F4TE5uYUFYTU8vUUYzVlRtUGlxNkp6cDJyYVo2Z0hlb2tWSW1BeWlqL0hY?=
 =?utf-8?B?eFJ2eVJtRlRrd0RIaElkbnhnakF4MFdyQy9aVTE2d2hpeEZCazk1ZUdnZURX?=
 =?utf-8?B?MFNRcFNDUk9DYkRoZEEydW1OcWpMRVdpclI4aXBwTGZ0V3ZJZjFmbGc0YVNx?=
 =?utf-8?B?bFMzcnNsN1A5Z2V4bHlxNGpaZ21JaFFTSWVQWjRnWi80bGtESTJIQkdsdzU5?=
 =?utf-8?B?OC96REVQdko2My9uL1g4Q1hUOXZRVDRULzZrcTIvak9BMzlDNGJNMzdROW4w?=
 =?utf-8?B?cmhtR1pVS3BLZlFZeUdQYmZjQWNoL25QREZMQThqQzY4RlMrZHRpSGRSTVJj?=
 =?utf-8?B?YzFGeXNKQXIxeG9xZFhIbTVndDJ2WVpPTFE0dTNGUlhQOTVMcWkwR0RYZitD?=
 =?utf-8?B?d1dOM3oxR3NlSFVGeDJoem1WK2lXWkl5ZE1ocGdseTlVdjg1WGNDTGRJb29U?=
 =?utf-8?B?M1FMOUd2dzFDV0hCcFluTEd3ajZ0cWpJRS9iMEowSndZRmpKM1RhYzhJRHZH?=
 =?utf-8?B?WUwxSHppbDNsSE4yRE5oeWxxZjZyRElQRnd4cFhpcm1TdGIwTGFXRi9Bdng0?=
 =?utf-8?B?TWwxNG9NaU9ITzRJWTBmUFh5MGl1WTJFSmgxSkczK05MMldBd3huQmx6RWZh?=
 =?utf-8?B?VjhVblMvcWxhdEJRYm1EVzhUVnQxR1FJM1N4c0t2RUdKTlExSHhDeGxXNXlX?=
 =?utf-8?B?a05oc2xERHBQNEh2eFJvVGxUNE1WTXZlL0RBZk9TdFRpakgrRThQYXRGL05N?=
 =?utf-8?B?eVhFazVyUkNiQ3dWc082Tm1mVDRQZXRuT0lGZVhmaWwrUEVzSFVlK2FqN0g1?=
 =?utf-8?B?dy9MZis5OTdsSVZIWGhHV2w4b0tPcDV6R2lzMjh6cWo4cXFmVmpHZWgreitW?=
 =?utf-8?B?SG9pT0UzQTExZkxJMFRvOTV6ZURMWVZZQ1dDUVh3ZEdxdWVzQjJ3VnJ2WDIw?=
 =?utf-8?B?dEUrQi8waGR4d2FWeVRkb1ZhdVhDcllTRjdEajhvcWpTMC9ueWhYbXh0UFVH?=
 =?utf-8?B?dUY1ZW5zM0xheEFkNFk2TllXdVVDY0FhY2xpbkdjRmxibVRXRHJmNnQrVDRM?=
 =?utf-8?B?OXh4NFhTZVVVRFhVT2x1dlFhTTJPRUlZRjh5TndsRlcybm55UmtSc1JrbC9I?=
 =?utf-8?B?RXo0Q1hhcTdHdHlwQmp1b29rZUx0NWEzNjhTWnV0TDlQdTZUMEFTYWpqQW9k?=
 =?utf-8?B?aWlwRFBlakFFUWtTcG1SRUZBeHAxeFpnemY0N2VlaTZMOGtnWVpaSXVEVnc4?=
 =?utf-8?B?ZU5KdGtFbE9VR204bWFtdmlkbEhJZXdXbnZkUzYrZDZkOUFzSlA4S2xpR1BG?=
 =?utf-8?B?alA5cm9wVW9xcFdteWI5bEVFUTdwVFNpMFZ0NXVrNHRXT2tRRE91SEJ5OWUw?=
 =?utf-8?B?dC9nNFREdVVwWG5NNThGWVhjeEczRzVSZCs1SG9rQUpPWDRXdUNhOUhDd1li?=
 =?utf-8?B?SnM3S0grSktkbXNOdDEwcVo2RTd1dUp4RDVoenFaNkdjSXR2OWRQWG4xQWhO?=
 =?utf-8?B?WGpHcW5lQUR1QWZWWko1a0J2UlVNdGtIaGpLZmxsd09FMnNNU2pGY2dDVkdP?=
 =?utf-8?B?SDlYdnhYbGxxS2dHamNUR2pjdlR6eFZMdWdqQUFSSDI3YUl5amZiRzRwOGZH?=
 =?utf-8?B?QlJDSkZQUnhLZVBNbWExcnA0cUI4NDlNMHRaN0FDMlpRNGRsWGlWMVpJcURz?=
 =?utf-8?B?MnhJZU9JRDdaYTZGS09aQlBHb0F5eGR1eG4wZzRzYVk0MGxxaE0veW00SnBv?=
 =?utf-8?B?L0R1c1p6OXY3TTY1M1BtK3VWdGhtVktPOXRLUEptYjBqR0VZMnc0aXNDRmZl?=
 =?utf-8?B?RVhmcDd2cys4c3EwZ3B6WXVzTzk5Z3JrT3VTU1FVMlN3TXdhS0JyVU50ZEFr?=
 =?utf-8?B?TUE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbe81c4e-749f-41aa-5bd1-08da8a30bd17
X-MS-Exchange-CrossTenant-AuthSource: CY4PR10MB1463.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2022 02:38:36.3240
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W1w23VDz68mqNbyGEEPRdA3qduEvJzUS922zkqBN9fN9NRsfX4wK3UrKEnlLa6oBCycnt44/vksrV3CqlPTCJlH/ISXpEfO9iqF+quTyb3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB4877
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-29_13,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208300011
X-Proofpoint-ORIG-GUID: 6hQatI0okQFw_pyaREIsjfqzw36XVXkV
X-Proofpoint-GUID: 6hQatI0okQFw_pyaREIsjfqzw36XVXkV
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=hIuE2JwS;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=Kh8ush13;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 8/29/22 9:21 PM, michael.christie@oracle.com wrote:
> On 8/29/22 4:51 PM, Uday Shankar wrote:
>>> So we could just add a CAP_SCSI_EH_TRANSPORT OFFLINE flag to
>>> the iscsi_transport->caps struct. When userspace sees that then
>>> it knows the kernel will now do the right thing.
>>>
>>> The drawback is that we have to patch userspace and then also
>>> get the the new CAP_SCSI_EH_TRANSPORT_OFFLINE patch in the stable
>>> kernels.
>>
>> Another drawback of this approach is that we are covering up a bug in
>> the kernel, which is still possible to hit if someone/something besides

Oh yeah, I don't think the list of programs that can hit this problem
is very long. It's a iscsi only problem right? So there's open-iscsi,
some boot tool in go, and google's tools that we know of. I think only
open-iscsi will have the problem too.

You won't hit it in other transports because only iscsid tries to online
the device from userspace from the same thread that is needed to relogin
and unblock a device. FC/SAS/SRP don't have the same problem since they
do the block and unblock from kernel workqueues which will run independently
from some userspace thread writing to sysfs.

Or, is there other ways to hit this that you are seeing? If there are
then forget what I wrote in the last mail :)

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e5f7ba9f-8268-c0bd-7a60-f702157ab6a7%40oracle.com.
