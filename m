Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBOGAYWOAMGQEPMOHBEQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 32ABD64680A
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Dec 2022 04:55:39 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id t9-20020a5b03c9000000b006cff5077dc9sf215124ybp.3
        for <lists+open-iscsi@lfdr.de>; Wed, 07 Dec 2022 19:55:39 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1670471738; cv=pass;
        d=google.com; s=arc-20160816;
        b=bRaKVNXV9uARgttzLr/0YkHUN8WfDka0jppHxky+0p2z4SPP40poHE0OoTlWYxwPLk
         5Ol3E4AqhvhVmiYzDSWdPTGND5PwjUCtxZBZGzyNQ8Ef1htuuex2yIlQY3kCA/DjLBFJ
         ZgMjfoZwEdsY7WKB9FUUJzJKcYMi49auAZQjxZfclHkVcY61HS8W84jCSrBDsFtH5zYM
         PCk0Ys6ho9gIkW17FDCRaBq+NehizuRwpuSilhbFmkrP+2eANcvuRIgkb2BaoAcUNaYn
         EQZ9MjKyox1ADcyxg1JXicSyF5HmGmp4CH/9IljHJcyYDgw/Czv4KYjIqXdBTgzahlTX
         AVrw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=/z6UdkYV2QGQJ+p6fNx3bvwcJhAbMepNfTy/eDXC9pI=;
        b=DnjF2VG2MAZCbSmvBHyJEuVmT9ubAgRPF88keG+ikUpr5UFHqLMwOxoU+OyfclXIlE
         9tcyZx/4BedAUJVACq1uHYP7ACvsutTWJyA/X0Nznl9iOF0sIXRBzEDep9MnSxovXhcD
         2kGyif2d4yl3RAVM3oJujX1BHNSf71DeFLv2AuU7zAlzoW+WqAa4VGcusq4HuBebL/Tx
         VF0pQAfCpA14cx0K9gY4pcbvHbvGB+VzAKNvJ36sTPYJFrP6ebdCJfSFeBE8PzQEgWm8
         TewlKv4wlDa1TCLkL2H0MeLHZmSbfdd9wLwjo9ltORU/VnWAQfgtKm2ZuAj10m+I6qIu
         iIlQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=wn1Pu82F;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=BIThIFDf;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/z6UdkYV2QGQJ+p6fNx3bvwcJhAbMepNfTy/eDXC9pI=;
        b=q0E9XyH253HYYcwPGI0ZUKO0hlu5WdA9kknwie0al2Ru9BJVBRhVHMIy+3Afg9KedR
         4HFTPOymhZPCuBqnSCGGwxdDYh34R1u68OLy6VpNyYaflEJonxctn0H+N2SpWcxFHR+N
         Yoc+7dhmmi+tq0X589oocQkObNClUuCBKoz4iT5r5ADUVyb0EIw5gqVdJVu3c8J+LOf6
         X5G7lcE9Qqb3uIThI+iS86R6mRV7JLt/iC6PROZJ+aTn5lHKOo0+AiviNl+muV3srhhB
         fWGj5KnTjur5SyQhwdCBtY6Y4bKsXE0Ple6ddyANIxCRnNxYi1qME5We7cR9OlNZLx7m
         yonQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/z6UdkYV2QGQJ+p6fNx3bvwcJhAbMepNfTy/eDXC9pI=;
        b=PQTXFJa6TmPgM/9dgx+3VtPsboJLy5ojYG3cinq5G3ZOkwmG+E6t7gDGlmG6jv0uyc
         47dVyAxdsOBdWcRLJ1/qbWNgThYWwcnIDuqgiHuH2yQ3jS4eIJl3VBbJyk6cDxD2svmB
         VspNJ3N5/sdSUnPQszTZPInSkwyKbrs4l84RsBy7qyQ66X/ecHNgzi5s/gz9vOI13Fct
         ygXfgi4GvnAOma6CNK5D6n+phoPdZr24VkkgCN+oKnPt8i6Rro4svmD4kG7/jJ02U4n2
         7gJDa9JeIumMFasOdncKeBBgg4J6xrI2fgFQbEtB0yEOyyXYwYCRfMRyzSAnQgfB2to5
         8M8g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnEvAMXa7x65MDAIVlzkJzx+4BpvYSmlC6sq+gnbTsCNDv5Qj94
	oQo3UODnRAapKbDBN+W/A8o=
X-Google-Smtp-Source: AA0mqf6rU7QHLjlGdQuS6xO3z+UUgVvTp3Rsi4b3Ld+INfTmBBzX+dZngMOuAAMxNR19uA1GWosfZA==
X-Received: by 2002:a25:344d:0:b0:6f0:f80e:9e87 with SMTP id b74-20020a25344d000000b006f0f80e9e87mr63570395yba.247.1670471737894;
        Wed, 07 Dec 2022 19:55:37 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:9b47:0:b0:360:d89f:2b52 with SMTP id s68-20020a819b47000000b00360d89f2b52ls2343313ywg.2.-pod-prod-gmail;
 Wed, 07 Dec 2022 19:55:35 -0800 (PST)
X-Received: by 2002:a81:d8a:0:b0:378:ccb4:29f2 with SMTP id 132-20020a810d8a000000b00378ccb429f2mr1656377ywn.32.1670471735672;
        Wed, 07 Dec 2022 19:55:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670471735; cv=pass;
        d=google.com; s=arc-20160816;
        b=vSNf2vWbTLZKl94hzQwEGZQBbWKVAhUSo64QmMK5Vpc1ELzICM8zjIRHqKq1ewuQwL
         5wZfdxXJub8AioGRF5+nyN6AF3zSwkGl3iqe3tglmZlEW8PbyDxbr2seMBJqcLZ6xMUr
         CTuJp61YUw6HTW4hWJaMp0mO7dFe53Pe1Pf1E0nX8FpvJsiKss3OQpyjNLxezPKd/HDe
         6sGvM/oJU9Qz8lynzT8jBO19CmGvLUV3gQk1Yj1ugw9BeSQM/14DsQzPahY8cfMu2kZT
         CAmXoM9sHC9dR9RADGVGO1E1ebqfyemm8jIhwGBAhsO7LWt0coCJsyJf2Q6KkNSyKhai
         bSUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=/cl3loVxRxhmeohQBPQIHn/095uNVZNUWs9lG1aE56w=;
        b=MP1ym01dTkYp1q9ztTF6wo1PQh/Fr0gPwzJFmdF1RYiGn4CNkd4EHGbJ5CfgWPrN5l
         gVE7MwebHXtnivTIL22XDvasIuuTdianszDOQLxHF9exzc8MZYjlOrq2qAP60EXTrv3n
         bUfyKnQQY98IQcamJNfbEBRty/hFJlCoG1n9/Wh8r50i5JSaNqwjLyuHL7cEP4wz5ZPy
         i5ItdF1kIP2WpvOhG2zyLCtr1u+kIHlFj1tVcmAJqgRE/QQ3sIjOE9sgKrF67ogNCSlA
         K4GnxtC2euoRR6OG7fV9iXctZFFcL8izW3AVnJynXHbIXMenJFBtQ3iSWWK/1NNj83Zy
         AGcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=wn1Pu82F;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=BIThIFDf;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id bo19-20020a05690c059300b0035786664d22si1352679ywb.1.2022.12.07.19.55.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Dec 2022 19:55:35 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B7NNiuN001431;
	Thu, 8 Dec 2022 03:55:35 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3mauf8hvmf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 08 Dec 2022 03:55:35 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2B82244m033806;
	Thu, 8 Dec 2022 03:55:34 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3maa7xp0dq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 08 Dec 2022 03:55:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+gBqVaYV6kv7c4UjCcRZoCoorf0CpzJ5SI/suHKLom8pmSqQuoZa+HzboLWu16loOABGLrz4YczxZsfjQQUV9S5fncNRefRvIkLGvJzJkpYu/v+7q656EohMScKqjoN2ZLBLhOqQOQQq4ta5gt4lZybbFdNI4lRRz9DoMAjNZJjarZtKdn7ZRoHwbC72+VQtqBMEo9flIU5DZVYKZOF8uLdCtcPAoxP0LWJHXzn3+6HP/9pkfZoRgLefRrupI7uLZKzORS+jtqrp8q5Xc9BvYH5MKXwwlJL/llhKeAHXWGv8q1cO3AwA4cfAVCJ/5OIaVsOiA58HRLv8UYo9bKqtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/cl3loVxRxhmeohQBPQIHn/095uNVZNUWs9lG1aE56w=;
 b=L9l9rYlR73xWa2SL8n9T/c9V60vqUy8MT6PIJ+CrodPj8Y4/5FdtRNKdVm8lW9NUOXw9XvOKOD4xdayIAvwArS8zUBrZscraXAPAQE3e2Jc9bedMSMFYOntczQBXAOITx8pPTfFKtr5ucdvfqy9zMYxw8fEEo5gMATMTJ+1RTxipgzrVcBp/GYHxAVPpbKDHS4pFmbdciKnuXpAGIhuIvWFnXvdB6v3b+gImCp7XqJvV/Wh6uGlI3lvsrue7CncJMZBgV7M9evZ7UkoNEPY//f5q9Lb4gZp3fVfsEg4TqVtKr08289xgU7yp15+BVAqSuz0ff3dkK8YIF8FBbODXQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 IA0PR10MB6890.namprd10.prod.outlook.com (2603:10b6:208:432::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Thu, 8 Dec
 2022 03:55:32 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372%7]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 03:55:32 +0000
Message-ID: <050e7458-c952-1b1f-a98e-6c12c5b30cdb@oracle.com>
Date: Wed, 7 Dec 2022 21:55:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v7] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, liuzhiqiang26@huawei.com,
        linfeilong@huawei.com
References: <20221126010752.231917-1-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20221126010752.231917-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH0PR04CA0063.namprd04.prod.outlook.com
 (2603:10b6:610:74::8) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|IA0PR10MB6890:EE_
X-MS-Office365-Filtering-Correlation-Id: 84199ec4-a99f-48c4-3854-08dad8d00dd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8ZTATfyec9qjCAAQ5GrO0VGI6yBUPYvUAS1ATyJ2LtWtJHjYGJjtjwGesrlVAkwbcKKczfpWDsKcGEFkFZaU/530JTymW/SU23/PbMCZszc5AMzrrgedwUyiuyuZvosO59shrMO7azCDjMJVjLl9Smcz3rdEVt+f0kZpiVLaG08EozzJPn0h6D/5cr1uw/OT2p5YIw81nUBTPFDbpt/cJYRr61g1ZaSGZwssSEPcndyis6HNZVuJVnqqZIiiTd7BHcIdD/xhatkTD2c5FHbdD/hxrYTZJ9IJzO+HXegDnH7C+kXB1B7Fm6NPkW/yc73dabBakl2QUqA9Qbif33+iyM9nT0Zc4vVfMIhKl8WDS3ZT8Vpe/jiNEtoMLGnaJP1mY7cpBrQlgC5oHaergJeS/CC1CJ87PjKMUgLTk/xU4w7igB9VqeTUC12jP8RZqikqOTWxdnn/slPFtwpYqO9r6VWyWs0YfBezc3Vs7Ev9q97Uyiytfj+crS2oFWazPDWkj9RTaijuRMqvD18ZBF9KayRQN7OwdpLFR7UhyhTYaaW7CM+9Z9cOz1JE13n2sPYTi+Sp2sSZ7eSbD0Z1LTUTPM0l0YZ9tDtHXMZssdHKBA1Z6QeauxdL4NcTed6DjTokPVW61IXeO1lW5nQE+3edJzArBX6XRAyZSaVT+XJFrcJQ4XN/g5QlGkYUYaQB4ovuW1vzLxgodSfPFy3v/vCXGJK4Fe5ytAb6P2iWj7JdeEI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(136003)(366004)(346002)(376002)(39860400002)(451199015)(5660300002)(8936002)(31686004)(316002)(38100700002)(83380400001)(66476007)(478600001)(2906002)(110136005)(66556008)(66946007)(6486002)(6512007)(31696002)(26005)(4326008)(8676002)(41300700001)(36756003)(53546011)(2616005)(186003)(6506007)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R21hVUtiUmJaRFJYdFJENlM5R2R5QUJVN21EVElNeFNWWjkwdnF6RzBSOHpH?=
 =?utf-8?B?UzN6b1czdjRzemVEaTN1OHRlWHJMZzIxZUJQV1FNZ3J2STRrOGxESDZ5MXNN?=
 =?utf-8?B?RElNYTYyeTFxa3MwNThiS2h4OWo5dWlXMUFWMm14eFBUc3BKMzljWnBGZ2hH?=
 =?utf-8?B?V1RXUEVKZ3NXUmRobXlNb253TURWdVlLT1NORG9RQWRraEJ2bmQzUG5nVm5v?=
 =?utf-8?B?V1hXUnIxY09CSDJIaHk4VEVrdHI4alJuSklWN3prQnFROWkxZEd6M0YrZzFF?=
 =?utf-8?B?RktQYXdPTDFnR2tHd2tyaUUvWnprMXdKWUlwYnplOVg5by9PaktLSEZHdis0?=
 =?utf-8?B?WUtPYWd4MVI3Y1pMd1I3RWI1WnRlMWhoUUdBOVNBc2RuZUllNHZiVWdYYUh1?=
 =?utf-8?B?ZXpsTkNibmxyUXpPRWJ3a1QvdGtvaHdQR041YW42OVczUlJRMTR4ajQxVytR?=
 =?utf-8?B?aXN6dUQzNG1FQm9DYjFWeHplS2VKbFlnTlRiT1hqVlNlWVNQOEMzaUFHQ2dE?=
 =?utf-8?B?S3VRdnFmbWl6Mmh1Yi9DVjRQUUR0S3JZMEtUNGE2aDRhVGtPUWUyUnE5NEtS?=
 =?utf-8?B?SFFSbm11dW5RNUtZOXU4RUEwT1JqY0NKaGFaR1kyMHhCWUZGOGRJOFFpS2J2?=
 =?utf-8?B?TkYvWVpzeTRYVXJZSVVMbG5ReHFPWUVjRzFySFpYMUpGaXNETm5UeVdEdVlX?=
 =?utf-8?B?YjY1RUpabHFnMlJiQnRXLzRFMTBpRzBGNk1iOGI3RkdLODZHbHRJYlRxS0VG?=
 =?utf-8?B?SmNWU3dlSE81d0tVUVp5RTNOVGc4RFBBOG5NdHZIOVVjZGtjc24xV1d1TFRT?=
 =?utf-8?B?R1ZUdUxxb3dUemZYY1MzNjg4VEtEbzZ5eDFjTkNoYWZ2dXV0bndJcDlXc1I2?=
 =?utf-8?B?RkVQYXhwTjNkb1VBNE1CcFFLZlBxY09MdHZ1anp3NTBpVkNrdm5jZk02bXE0?=
 =?utf-8?B?MEhKcllrd3BiczdDU0tNT0dLSjFEdXNhRy9EN3BrQzJUakVZb2RxSHl3N21n?=
 =?utf-8?B?SHdiM01PQnltYVkxY1VCelZ0N2Irc3B6VEk3UXVTa1FtOCtySkZ5aUF3NUlY?=
 =?utf-8?B?R094bnp3LzduRzVlbTlWRUpSK0VrUzF5RytsaGJZWStibTMxZkVtVjQxTStG?=
 =?utf-8?B?S1dCV2xDM24zeVRqK2ExNE00Y2dSYTVRYkU4Z25IbWtaQWRodHRkRFkvWTJV?=
 =?utf-8?B?VktFTnpGMDBSVTB0elNWazNuelgzYTZuWWdZSDByMURCTzY3d3lDTFhIczFQ?=
 =?utf-8?B?UDFIaEljZ1dyVGVETTFoV0MwWVNCc09uY05kTFlvUTB3YnJidXJpMVRmZjc4?=
 =?utf-8?B?MzE1S2FrRDEzWDE3Z0NHRWN4YktzdnhFTXlHazVyaEJid09JSDI1aGhhRkRQ?=
 =?utf-8?B?WU0vVGhOY1dsK1JlN3k5MEo5ZUprdzhSQ3dIV1JhVENkcmQyd0puMU54UWxk?=
 =?utf-8?B?c09yUk1GRkN2QndZTEhhUXo3OGhENVFMVytidnlmK1UrZXJwZS9iUG5yNlM3?=
 =?utf-8?B?NTNHNWVhY0RIMkNNOStiRnFxWDEwbzNtTkErY2FBMnpKSlRnRm90WG5nVHQ4?=
 =?utf-8?B?Mm14MnFLZDUxT3AxdlpsUmVuajYwVGRnK0c5T3lNRTFDT05iUnpFSkJEVEU4?=
 =?utf-8?B?ak14b1R5TXpRQ2dDNTg1eXFibFRxT290NzlCbkplUzJYbDh2cTVvMmlWbGY0?=
 =?utf-8?B?dVVIS1lYMmJITTFvcUZTeVFuWU1Vb3hDMVRBaVAzaThMVTRxb3F3YTdKNWU2?=
 =?utf-8?B?NmV2cGprSmNnK0VXTFNBSHNrWnBrTS9CQW10OGJUdVlwK1BpbTFja1M4UzlG?=
 =?utf-8?B?bHNCbnVsVEZMWmNDeEJRb29wRTRxWEFEaEVyc2ZXbzRpVktHWWJLalU3MklF?=
 =?utf-8?B?OXRQZ2J2cUJXT2tvSUFURXUrVDZITTFWTWdoTW5JNnJmc3J5K1JEM29aOU15?=
 =?utf-8?B?eG9KcEMyT2I5aS96Z040R1pRVEJUMGliOVpKeXBUVXAvVjY4SGlKZExkSDdO?=
 =?utf-8?B?Nkk0ckhuQjlGbVNzTE9EZ1AvdVJoQU1lNGhNWDdObjdoM05pZEV6Q0k4Y2ph?=
 =?utf-8?B?aHlFeGFOenFkRjQ4WnNKaVdCM2JucDdzenRJalBlZDMxeUcyemVuQktVNDhx?=
 =?utf-8?B?aU4vcndLaG5TNGVReTArNC9rZTdLeWt3Nm1IcGx3azJvdlJhS0FQQnlpNVVK?=
 =?utf-8?B?TlE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84199ec4-a99f-48c4-3854-08dad8d00dd3
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 03:55:32.4808
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DFvhN3Y51MeC1AFSBTX3YZDZr+LAu+gionIMghPC1fY84/Y4yeK5Uf1OPYi9VzTJ/iO6K/XmZZzr+rNoLawH15nHRO3+v9rHevD/enpNycM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6890
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-08_01,2022-12-07_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2212080031
X-Proofpoint-ORIG-GUID: ZQjf0cLNkHA7qthGqc66tosRC01srCrI
X-Proofpoint-GUID: ZQjf0cLNkHA7qthGqc66tosRC01srCrI
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=wn1Pu82F;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=BIThIFDf;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 11/25/22 7:07 PM, Wenchao Hao wrote:
> I found an issue that kernel would send ISCSI_KEVENT_UNBIND_SESSION
> for multiple times which should be fixed.
> 
> This patch introduce target_state in iscsi_cls_session to make
> sure session would send only one ISCSI_KEVENT_UNBIND_SESSION.
> 
> But this would break issue fixed in commit 13e60d3ba287 ("scsi: iscsi:
> Report unbind session event when the target has been removed"). The issue
> is iscsid died for any reason after it send unbind session to kernel, once
> iscsid restart again, it loss kernel's ISCSI_KEVENT_UNBIND_SESSION event.
> 
> Now kernel think iscsi_cls_session has already sent an
> ISCSI_KEVENT_UNBIND_SESSION event and would not send it any more. Which
> would cause userspace unable to logout. Actually the session is in
> invalid state(it's target_id is INVALID), iscsid should not sync this
> session in it's restart.
> 
> So we need to check session's target state during iscsid restart,
> if session is in unbound state, do not sync this session and perform
> session teardown. It's reasonable because once a session is unbound, we
> can not recover it any more(mainly because it's target id is INVALID)
> 
> V7:
> - Define target state to string map and refer this map directly
> - Cleanup __iscsi_unbind_session, drop check for session's
>   target_id == ISCSI_MAX_TARGET since it can be handled by target_state
> 
> V6:
> - Set target state to ALLOCATED in iscsi_add_session
> - Rename state BOUND to SCANNED
> - Make iscsi_session_target_state_name() more efficient
> 
> V5:
> - Add ISCSI_SESSION_TARGET_ALLOCATED to indicate the session's
>   target has been allocated but not scanned yet. We should
>   sync this session and scan this session when iscsid restarted.
> 
> V4:
> - Move debug print out of spinlock critical section
> 
> V3:
> - Make target bind state to a state kind rather than a bool.
> 
> V2:
> - Using target_unbound rather than state to indicate session has been
>   unbound
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/050e7458-c952-1b1f-a98e-6c12c5b30cdb%40oracle.com.
