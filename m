Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB7X46ONQMGQEQA4VUPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FD26341EA
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 17:53:21 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id x30-20020a63485e000000b004779bfed201sf1524134pgk.18
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 08:53:21 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669136000; cv=pass;
        d=google.com; s=arc-20160816;
        b=mwGlvQT0Pp61slf4+qBepr1za71HG8QGZ1rSzZGWAbUtMfyra6r0X9IMfTm4G10dIU
         j2emMJniG3i3NF36Kogqu6sh2HhAiNWZkZdngleXSGAK/ANCQ/3chxQ6V2Od+5J1kHJs
         if+MZHFwGwzKfy0rX+pBXea5855Xt438PQTlew/VRgRpviYPRu58y36LV/tvcFUGX7uA
         rTZP20PoJJR5PSkTCiR2BaWvLYYxp/yrLUbyvQ3w/izF5/T3VYj4SDt1YUZa2veMVNrd
         4IElwHfJejvEB45DI3BufSUdDwJKaviewRDOTyr4qsyzrLhYgPGEvNqJW3b++MKctf7Q
         Kz8g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=+iUzoeGrAtyt7VNL3zZ9hBiOUgXrdNa03ZfCr7QDhRg=;
        b=oIubBLbLqe8BpbtEVqpRc/FSTtdSs8YkFnrjGHpIc8PkkYFSncKlN1fwTD26MpNIGx
         zZ4bBAVa0ZWGtDJVhLnv2rjx2Pnc2lcg+ZQJzz3MAe3JCEcOTIlM1Dpv9tjCKlp3IwJi
         4voGByX/ExaqSoDYmUsdNJfmi1olIjPBqGrzk5WKlz9VcEwdCPJQIbr+Mx0XojUd9WYi
         hwQZu/uqehdTcNfaVXzIfunbiKZygU1FTmGluNvFj8arY8fUXWF7Nj9DpnaatjU29QeD
         pr8THYXnyNP+e462EsfbUo0/zzo92CVgOzqgw/NaceVBl1i0SgKAl+2o9x8nJR4ISATk
         AmYw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=PSse2l+P;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=i92I0oxe;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+iUzoeGrAtyt7VNL3zZ9hBiOUgXrdNa03ZfCr7QDhRg=;
        b=BiE4ybrHCqUqIcnhEG4RWBqUzI0GZbZ17/XgJU5fqfUJKBvx6u0g5tbuBYpi5Ljl0g
         D1B1UHSYxQGnWkEHQ8KH8AbxXScMPXKkKSQj934ZnZy6nIeGRuVf4SjHs4zWVxYUgMvz
         aYF7kMHKICpnmw9RiRL1V2Rx+HS5pPdGyYi47Cvxt36CVCHhTxHXSpx9Bq5Efka9Vz+Z
         TrEaFsCSxr3hig/pUQ3LuyyEB3R5ielWaNmxeY3AOmwHaqhoVXGKwLVri++7bExtmcWN
         Cc4wchG3VUO9kxGrkxc2AQdnuqMdm1I2ZGK0a2vI/ZH7nd1xW+2s9WpEpFhWIbYws9m4
         pvlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+iUzoeGrAtyt7VNL3zZ9hBiOUgXrdNa03ZfCr7QDhRg=;
        b=TaMvwMZGbMsT7NQXTLj/CMDxIBggdb2drIBCfyXy0YKPuULVm8qaYQj3y/y28fWHzX
         3aL/cGpLRBZrVdStgox4tpLKNNuPtMBRdjB+Fc+OzUcVv5tgGJ0KY+A6Y8+dQ8NccHea
         VjJtwfAzTEiiTgnCHdRrXSjkJdPQK4Qs/VWsr1exfO46Ovj4aQ0xKjDqH6KTac1kahG9
         yCAs8WkOebma11pHVqHVNNa0M7liaZAgrS3tiTEFKM+xIifSN/T4DDZwoSuvZy12tFUo
         7R2cOTGLWh1EQI1Ax6qRqonQ0lA8nEPvNmisSNEO8KJGzoL2Ths4HQLGZiUKlIvBWFfV
         e2sQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmvmlBae6Qn83LvwjS/MgJQINi/UHQs1+fWR85szukTJ6i4KGmN
	la4At0MXu6WdYX9Np0aq6fg=
X-Google-Smtp-Source: AA0mqf4D4fFKdLVM5eXMtp4J4VYMVddu0ieemp7CPLPkvSKI07NysF7frIX3ydpQ7fB3DKSOzACtRA==
X-Received: by 2002:a17:903:186:b0:188:5391:cec2 with SMTP id z6-20020a170903018600b001885391cec2mr5076896plg.78.1669135999619;
        Tue, 22 Nov 2022 08:53:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:1016:b0:213:e:b27 with SMTP id b22-20020a17090a101600b00213000e0b27ls13967680pja.0.-pod-canary-gmail;
 Tue, 22 Nov 2022 08:53:17 -0800 (PST)
X-Received: by 2002:a17:903:285:b0:189:25fb:ad0d with SMTP id j5-20020a170903028500b0018925fbad0dmr7936517plr.29.1669135997453;
        Tue, 22 Nov 2022 08:53:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669135997; cv=pass;
        d=google.com; s=arc-20160816;
        b=wPtAi4/I8669PDGv1UJFxiMFgN5Eky84AT+XdKJqu5JmOdJJjxNuLwgA15OHB2Vnl8
         H7BWFjUuy3xUqRM1XE+spy9qQQNScdZtAEQ/+2sZfPlsJS3ALJslijdnsBv0/qq1xTnY
         +8fB3dRTAYm/QXmjNzJtU8Us/P3GrQnf32z6DWaTJJLi8ky/C4a+V20N5xVbOCUF7tSH
         7tTm+tPRzcYK4/tLKAlKiP+dMrejiKndpJdQ+oSWQ1tC6nVq5gtNeJk9kC13ICfno3i2
         +UGIp/+eSVC5awn1IZpx5D1VS990IE41Y+K5XIUPzw0nDKFWxaSpg+ewO/EcWc7AtxLK
         AJqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=XZqQ2JsitzRTpgyDKkcU3wCB9Q+QDP2GLv31NLcxE0A=;
        b=qfkgNeIoquNYUWjfhcV8kuEcPFv9NGhrhyLoK5CzKYWxtfHr8K2tZUIWkd7i29Je1k
         djeqvtcnNiUaNDyPMyVmKx1VHGLjsY735Wi06Khouc+vE5ob12umgTRJpvtqazvTUX3x
         F8/FWDkftMnetxxFF/hUez0GytuRFg1UvIbE+9ui31MbCnTO45RYX2vGAG8SN/MCHd5D
         WIAtK5gos+ne/n5GwGPFc0AdG2+dWbQJVJhRMCMRA6jbpMUqnxdOuZi33jfZ65qP6H8+
         EpwIFnkxU2/+M4QGPvdx8l3CRKDz7QmHDjgx4MREWW+Plzlvq3Xw95Brzf1cXC/oYZg3
         8A+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=PSse2l+P;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=i92I0oxe;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id z10-20020a170903018a00b00185499dcc29si928888plg.7.2022.11.22.08.53.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Nov 2022 08:53:17 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AMFpEOo000582;
	Tue, 22 Nov 2022 16:53:16 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3m0gas32nm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Nov 2022 16:53:16 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2AMFdlZj008314;
	Tue, 22 Nov 2022 16:53:15 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3kxnk54q81-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Nov 2022 16:53:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JIlxDuavHzsQcHwd2x+mH52NEKY6RIZjla0LKc51lGyfPKpx6v5qlla5X856XyNY2iCDWpxUuGFkIiBScxrc21GXrEpdY0jxpaxsNpi7eIOPzQZO4Qhq2piRzZWqTHh+ncc7Fy6/XlbIFiVSWG/FrNx+e0i+zElzxpSssoRG3kozs2/LbEdcy/fiCOJm2/9sncXjmEKnOzCs9qiaRFgy9xz30ivlUQrUWZDPxyIYhCdxJy9CPLs2chq7ivwg0Mr9gp3/x8882P9oGhmU/qy+/U8jPgY/z1A1mP2vXvtEna9dqwade/i/W0pnDQMH1ohjCs4aTyqx0nGOmKXMuMpwLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZqQ2JsitzRTpgyDKkcU3wCB9Q+QDP2GLv31NLcxE0A=;
 b=LCeZOfWIpooGjnUmLNe1OXsWq1vV83c9+a97m9maAncSggSFl9ylF0IwFluR4NJmYREfXLcqk//lN7S3WnDcA+Ro2Sp0Sq41bJOq3q3p3LcD0ljbBtybZQVm6Ru8QXTiKbQXsnJEthUsopSValLJnnIIkzFnMOs4/VrwQP5Di/6xUuCi5oIOng54e8VgMZd419WcymzATUctreZUZL6Uc9Wam+Tfx+hArzC1Y/e3elJGOFarEn1ncdRzLKqi0WywLCXhNHMIARzeC7a1tjnr7qliid+evPr0mtZTn3fIuwPVAMk83LQ3OO0gIFVCGGmIgv2k+iTEjsa7ul9HYv73Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 BLAPR10MB5202.namprd10.prod.outlook.com (2603:10b6:208:306::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 16:53:13 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df%7]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 16:53:13 +0000
Message-ID: <418c7f6f-0bc3-45bb-2abf-e866df6f4b62@oracle.com>
Date: Tue, 22 Nov 2022 10:53:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v6] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        "James E . J . Bottomley" <jejb@linux.ibm.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linfeilong@huawei.com
References: <20221108014414.3510940-1-haowenchao@huawei.com>
 <ad54a5dc-b18f-e0e6-4391-1214e5729562@oracle.com>
 <89692b2b-90f7-e8e8-fa77-f14dbe996b72@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <89692b2b-90f7-e8e8-fa77-f14dbe996b72@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR16CA0010.namprd16.prod.outlook.com
 (2603:10b6:610:50::20) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|BLAPR10MB5202:EE_
X-MS-Office365-Filtering-Correlation-Id: 55c96b5e-9b59-42a0-5bcb-08daccaa0b39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uqYCQOhm9utZ6pI7BDPWWV7Gjtu1hoeBnhpZFq2eQLPuRCAtgZuLU/NcBBQjJ+6CBmpzLJDymHAEcaW++a+GcfndAsxT+r1NHhlHVYJHxhQDzCnZKp1fOxr0W2fhx3pLGEuwaVdirzoya2GCWu2eU/T5s6YUI4lhDqtIWav2luSinT5VA5BScF732xdgDnLpKqRJKm3MWIaqFPefZ6o1uHG+RMSg+BN40twgD2x6K52k8Gbn/MF59o9OrylwI02BIcdB+Qq/DEEGQZj+NhhuAsr5L80phVQnTGQGw6kd/qYp5xH/mgEb1ZSMCDHF3TXlkroMyICwZMDDDQM2pz7+ChqNBPdx54wnhgLkZ27iQS2HEgZAGT8X0GHnsmW8yEPBWalJsiPukDD359SSMf4dWjEsHU0d85RBqNSUbjj+9b/xH8u3XprIBrWISul9TLvq4YlADgD8gUrE70iR/XW/KZlwmJVxVeL9IxM88H32qxD9jwjDrb6ETxveYnS6WM3IAGro1iH08aOrwvrqUarUy/uZVNdOPSx8U7FrnptqQ8oWHri3go7adCSRDvouaEZ3lcXN7tXz7rloOhRc+8uUbJecW+tvq6W1Ulr+NFwm7co4twaDiNgzQgpH2Sy2hNwCE0OQgSvNsrfKkvW0qBR+qB6FlGUUfkgcULqctIdQzi2M/h9SNwWQjCLvPlYMxPREXYPcTo6bjnSc5hPwZxvAC/CFfRUFVhH0MbPrdf8k0ok=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(376002)(346002)(136003)(366004)(39860400002)(451199015)(38100700002)(86362001)(6506007)(8676002)(31696002)(53546011)(26005)(186003)(5660300002)(316002)(6512007)(6486002)(66946007)(110136005)(478600001)(66476007)(4326008)(2616005)(83380400001)(8936002)(66556008)(2906002)(41300700001)(31686004)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGN1MHA1NDlnNUo4dFZySG13N0VFd0JNeU1PWFlmRGV5NFl4RDNzWFVSNGsz?=
 =?utf-8?B?V2FvM1NESXV5RGlMcFFGd2FFeTFOdjBQZ09OZ2RaVlVxV0VLdmpIVlBvNVhz?=
 =?utf-8?B?WmJ3VGp5UzVKTWRrM1lObG9YenA3U1hhbUZoR1hmSGlRa0pGbHFoaVQvcVNB?=
 =?utf-8?B?cHNWdDJHSmsySGh6QmJOWlA5WlV4d2VnYlVyVENON2pYcVJOakNpek1FcVg3?=
 =?utf-8?B?bnQ1SUhiS0VvUTczc2JXeDhyK1BNb3ZGZVE3cGZ3RnlseE5aYmtZUnp6bjFJ?=
 =?utf-8?B?Q3dVQmVWY1d1eVd6UVJyMTN2ZTFjOUJ1YjQydXRzKzNha3BwQ0pNVG82MTY0?=
 =?utf-8?B?d2pZZ2Q2T3lTTE1GNURaenI2VEQzZ3cyTERIczlFRUZLSmNrZGJaOEtpaEJ2?=
 =?utf-8?B?VkdpVWR0V3FNNUROOUNFcEZwUDNpWDFNenFNZ0U4SjRNT0ZnL2RlallEMEZ5?=
 =?utf-8?B?Rjl2VCtaZ1YvQWJrZEVxQloreGN5RjlWUE9SQmdQRTBUZWEzcnJ0T2ZQOG5K?=
 =?utf-8?B?QkdPTS9lVTgraWk5TEFBL0I5WWlTTktWV0FjNW50M0hWWWsvT3lGYmV2cWxj?=
 =?utf-8?B?N2ttdTl5WWtZK0FuSHFtMyt5UE1IZU9ZdmhQV1UyQm11TkdkOEFNN0hWYzYz?=
 =?utf-8?B?RW1Sbm42elBYNXkyMWI4MjMrMDRZSDVPWFB2TDl6RzVJQ20rZEw1ZEFyTFFL?=
 =?utf-8?B?VTBNRlBsUHF5TjZ1eTRXM1FkZHNnQXhCVE4yb3RVS1RCdmhCT2Y1ZnVHaGJ1?=
 =?utf-8?B?Z1FkTE15eUl6eEMxOFc2QlFHYWMycmNQSnJaS3g4bU5tczZQeE50aWdoRGF6?=
 =?utf-8?B?NEJMdVZnNTJnem5LZFRuOG9aTFBoK3UzT0l0cmFURlc5VTB6S0RHeTk1QlB6?=
 =?utf-8?B?bXN6NnlwaHlHZFVhQ2oxeFc4ZkF2UEhrcndQSWVXcmFrVmVQVXAwa3dLbHJ5?=
 =?utf-8?B?NHhvU2dab09GR0tVeHFKd0FQTXcwanFQemJZQ2NqQlh4NnFuSUZQSEN5TjNj?=
 =?utf-8?B?OUZ2YzhOVXp1aDdXME95YVk2cWI2eUtzY3o0NC9ueW53UitZcmc2aUNxOTZ3?=
 =?utf-8?B?NGdSR0kwMGNBSTVnNVdFWEhjS2wzb3daU3dvZU5DcVFtejVua2lvcHBkbnh0?=
 =?utf-8?B?b3hTTHBnbGNlY0lLSzRWbjlST2RtTzRCZlk5UEZqTFJ6VldYQk1ieFIrb2Iw?=
 =?utf-8?B?ZGw1K0xkN0FIT2lXZzVwUnR6aEZFck9RVGJyeEs4WW9mQUNlZU5JSktOakJP?=
 =?utf-8?B?VXVtQUxwR3VhUTlhVUFCN211NEdycFp2TFBycDNOSFBpc3lzdUQrTzl4dDFS?=
 =?utf-8?B?VEdnVGVWdVZVL1lPMmg5S0Naa2hQNEZ2ekNldHRZSTVPa201L0ZYVkJPTjhM?=
 =?utf-8?B?RDNSSFVCc3p0aGwzdldLQ2FxOEZVd29oUHNqbmFCeWRsVFdoUG5VSDVGQjgv?=
 =?utf-8?B?Ulc1eHpTUWJGMDM5QTBHOEY5MG1HemltTG96VVlUSi9xVHZqNUwrZitBdzFz?=
 =?utf-8?B?WXJ1RzVsakRCYjJMYjYwTlpYU3FuNE5BQ2EwZldQY3JjVm5sbjJaVmpPcXVx?=
 =?utf-8?B?NTdaejJkT01HWVg5VzZwZ2h2cC80blVqWGtFY3IvZTVMYlNIQVphaHR5bk44?=
 =?utf-8?B?WVFmYnJXZlZEMkk2SkpLWXRlU0FqZjNmQ0N4L1B4ekpCeVRJakZkenRhZjhB?=
 =?utf-8?B?bmpiTTRiakxEQTZkOHk0Ky9NMHVOdE0yY0V4Wk0rRkJ4cE9RQTYyc3k2RDBs?=
 =?utf-8?B?bWlwNG02WWdUTmZza3BkQlpER2dWYm14aHJNeW9KeVZUWUZLMlFyNUZ6eDMr?=
 =?utf-8?B?T3owdTJ3ZzZHSlNTdWt5ZFNsNzNSTVRLYUwvVW43ZEpqd0tTekMzZEF1d2pm?=
 =?utf-8?B?ZXo2SVliaENqVmRWOHNkd2hMZDdraTkrWkc4OFNxSk1wQXpnYnRINlFPUXp0?=
 =?utf-8?B?R09hZjlvTHVyYkFSRDJ2bnFXbUpkK1hhSU1OeXVOazdTbWM0OVE2bXJURzRX?=
 =?utf-8?B?RXU4S3Jnd2ZGc2QreldEYVQ1enlhWE92SWJEZ2FKYjRoWEZXWE10QVpmSTIy?=
 =?utf-8?B?ckpUTVlISjNkcllqdFF1ZCtVMUpySjhFRjFuN3JaWStxYzd2dUl6TU0ySlVu?=
 =?utf-8?B?WmxQWTV5TTlQMlNTbnNNbjZBQ0s4Y1A3TnMwVUhKTU5tdTdjS0VDeWdqaHJR?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?bXNiR0RSTjNTazVxMlZtZ1kzWHRrN3JuUnFGR0pESTZpK0Q2OFpZVE9rSkRY?=
 =?utf-8?B?QVROV0hEdFEzUnoxV1JWZVFwT3BoNlRGRVR2ZmRHYU42cnlkeFRiVm1xN2ZL?=
 =?utf-8?B?aHBjZHRIVHB1ODNWMU5NM2MrYldjZUpFWmZxNGFRcDEycjRUMmd5UHdUMGRD?=
 =?utf-8?B?QlhGNXNYV2p3c2xRZ2RrZWVISThSZkxJVHFtc0xIcVRhM28zbUx2ODB4M09T?=
 =?utf-8?B?eGZRYTBzUjRkNDFzVmlXd2doVlJoaUNwelpVR0NMemU1ZzNHY2NyYllvd2lo?=
 =?utf-8?B?elJSKytsUDk5ZjB4RndsNDFnUXV0TjJ6Q09vNEIrQmdCSFpIWlIyMzlDUm50?=
 =?utf-8?B?WTY3OUZRdkRKMzRacGdkcVlweWViTGt0eXBuZXZBQ3QxKytpcXhRVE9iTXNK?=
 =?utf-8?B?bkI1eWxpek1vWVlxOVhKcStPM1UvUisvNm5UOTVBeWVTZmVaWGZZV0w4dzFV?=
 =?utf-8?B?aldPVDRBTkRGdGJQY1YxWU83SXRZM2YrKzBDMGdjYUJPRE9paUE1WE9HWlhn?=
 =?utf-8?B?RVdhVFMzaE9zMXVJUmhsbDlXcTRocnQrQVp5QnN0Rzc0U1dDL0lZV0VId3lq?=
 =?utf-8?B?R1ZMT0p6ZHhHZFV2djlvRkhtYXpyait4eGhobXpnVFdOYTRFWjJFQ1ZpKzRa?=
 =?utf-8?B?REJna3hSN2VjbUlzUEN1TU9rZzVRZ3NacXVuTmJPRGt2UzF3clRPWmIxd0JN?=
 =?utf-8?B?ZWRiNjd6ejJvTmRRTlF3RW41RFh0RGZuZ2EyRlBxTG5MVEpUSWQ3Q0Zhclpk?=
 =?utf-8?B?L0RVWFRCOG5MdDJXOFFmM1FlZG9RMC9XRXNiOEI5a1NjWTIyR25Sd21UMjB4?=
 =?utf-8?B?YlYxWmJyNzhPaklyMzdMa2h1WWgvZGpsWFdTN0dUeWttRHN5Q2NGY0x1dm9u?=
 =?utf-8?B?M1huM3E5K2lzYVBtS25XU0NLak94d0QrM0twekFES25TY0JlNUkyQmZ1c3Q1?=
 =?utf-8?B?OEZpYXdlM0IwUE9CbXMreEgwTUVyTjhQelhoTE1HRURrQ1poYVFMdDNnd1Zx?=
 =?utf-8?B?RDJ6OXp3QURDQXdNdGZyajZHSjdFVnRLOHU3WjlyZ0VGYW9Xam9CQlh4UjUy?=
 =?utf-8?B?aFZuNStxRjVFb3p5WmtCZnpTUG9TRmRKanNWSzVsZ2ZhMC9jQmppcUhic05M?=
 =?utf-8?B?T2hvNUp3VkhEVlhIRFA2UHNTWHZ4bEhTc1F0emdqeU9aUW1Na2JjSXMzR0hy?=
 =?utf-8?B?cDI0U2hpZE5zdjlsOUFteko5Y3JxaGg5Z0w1VFJqdHBVdE91R0RqZDFrSkdy?=
 =?utf-8?B?TjA2K3ZPeE5IUHQ5ZGh6U3FqY3RWVVYycllvMm9CYXpSTlVCekdYYmdwaENB?=
 =?utf-8?Q?rP0M9WkAkz0IemdDiJqYtOJMDx8yFIG5zf?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55c96b5e-9b59-42a0-5bcb-08daccaa0b39
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 16:53:13.2723
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +OHI73ZP+yyZa3F99q+6JrdpMqaM8Y5AmEd+yicmkKV4AkJ4lk0GTMwlRNpvTbBW8hbmWtL6AtS6JVcU1tu4vTqFdi8WYXwweNbDRLjMFAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5202
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-22_11,2022-11-18_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 suspectscore=0 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211220129
X-Proofpoint-GUID: 8FeN-jtbYWGmubyyR_It4rJwD3OKttHV
X-Proofpoint-ORIG-GUID: 8FeN-jtbYWGmubyyR_It4rJwD3OKttHV
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=PSse2l+P;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=i92I0oxe;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 11/21/22 8:17 AM, Wenchao Hao wrote:
> And the function looks like following after change:
> 
> static void __iscsi_unbind_session(struct work_struct *work)
> {
> 	struct iscsi_cls_session *session =
> 			container_of(work, struct iscsi_cls_session,
> 				     unbind_work);
> 	struct Scsi_Host *shost = iscsi_session_to_shost(session);
> 	struct iscsi_cls_host *ihost = shost->shost_data;
> 	unsigned long flags;
> 	unsigned int target_id;
> 
> 	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
> 
> 	/* Prevent new scans and make sure scanning is not in progress */
> 	mutex_lock(&ihost->mutex);
> 	spin_lock_irqsave(&session->lock, flags);
> 	if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {

What was the reason for not checking for ALLOCATED and freeing the ida
in that case?

> 		spin_unlock_irqrestore(&session->lock, flags);
> 		mutex_unlock(&ihost->mutex);
> 		ISCSI_DBG_TRANS_SESSION(session, "Skipping target unbinding: Session is %s.\n",
> 					iscsi_session_target_state_name[session->target_state]);
> 		return;
> 	}
> 	target_id = session->target_id;
> 	session->target_id = ISCSI_MAX_TARGET;
> 	session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
> 	spin_unlock_irqrestore(&session->lock, flags);
> 	mutex_unlock(&ihost->mutex);
> 
> 	scsi_remove_target(&session->dev);
> 
> 	spin_lock_irqsave(&session->lock, flags);
> 	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
> 	spin_unlock_irqrestore(&session->lock, flags);
> 
> 	if (session->ida_used)
> 		ida_free(&iscsi_sess_ida, target_id);
> 
> 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
> 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
> }
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/418c7f6f-0bc3-45bb-2abf-e866df6f4b62%40oracle.com.
