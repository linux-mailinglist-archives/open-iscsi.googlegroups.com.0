Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBQPJYOKAMGQEVOJPJSY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D32536529
	for <lists+open-iscsi@lfdr.de>; Fri, 27 May 2022 17:56:52 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id j11-20020a05690212cb00b006454988d225sf4458817ybu.10
        for <lists+open-iscsi@lfdr.de>; Fri, 27 May 2022 08:56:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1653667011; cv=pass;
        d=google.com; s=arc-20160816;
        b=mwMRAGATcFcC8clEbwVL7XtiZZoCvAeXusEdfbmXMJOR9CJAigQRYqWYrxB8KRhBlH
         AUqPIfwCc58cBuve63q+4H6yWdclq74vlLu0KSaY9efNiH6KJagh6lvOuSBbZHW9RZs+
         r4NeCLtfVmRc/eTyZvXEzJv869WrNEcGp4N4jAkvPHG+sMi+DOnEL/adidjAXMjxw+B4
         AVUrVKfOBryIpotO/Ii1cX952p0zHCs2UpE6OD+zLsDRHgP+HbzRfr3BeGXarzDWavHK
         ZsAtTqr349VelaEOxx6ZCx5j0tcxrBiFoJf/TJG5NnVzSbMz8631oeADFfjUIjQQlNPs
         36TA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=uTdoAGtlNGkaN207LkH5/N2gSlNHrAfoiE3nC5X1514=;
        b=hb2IMef5et+9HA3PL2cJ9Z/pL3NTnMbc5RrmdVQWOAiTIyat+6/X5OfHfFqTs4UurL
         s2atZiJxbyYJgX1fQ5/ncPdzZy7ZKbBUZQnriJz/wPDlUhhK4jJ0swFHz109VPheaan6
         8v8uVS48+pIk6Iv+mLmm9iddo+6PPSAkgETE7WcKC5dYvfkB+mZiqlns1drmLcTfPblm
         VaxszRHNJ1Wkc17Rw7iVJAofopXynPx5tkcyUFnV+W5MqHNjExzHjV4EPz+WIanC52tU
         wBJwAabo2MmO8Vp6ib7S5q1rFXdxA1gETfL3MDFFKWkwPknRi65BeRi473geKN2Jix21
         1xdw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=s1Kdfiux;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=eDPKHqnW;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uTdoAGtlNGkaN207LkH5/N2gSlNHrAfoiE3nC5X1514=;
        b=M4wxEsT1Ipja4eiAjeoOMtv3cNAeLk2Gc+a5qF7wv/Mwah763vwA/MqRycD1xAuMT4
         XrYzHRZX8Hc2mKJ8ieaqhRVWJ4cYe435QLsY6RKIPu829uyjJQoGxVxYxSy7bwR0I6FY
         MkK4Gsvb4FBoho13C3RR0lxPru41LZjtYc9fsd2fn0i7sQiqOHyzKhGo323ozCp5HU8N
         nX438tktao8ZNGAY3U8UWE4JcNKk52PR3ppDBDOsHSgUatm+XQZp95f9OY/3GlFKnIcG
         VV2W/fTDOC5U3rRkEogZuDCFxxbFpkubMZ95XP3jRxjcihHjBDC+X2GBRulV9E71jo7v
         mLBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uTdoAGtlNGkaN207LkH5/N2gSlNHrAfoiE3nC5X1514=;
        b=5V25IqN7lS8qYfQtHzuvmRo5VASsJ8/KmY9ZD+ct1t7hxTNbWVqGVg+5Ef7KFkrULY
         XWKjoAS+BdML6vKbxR8rtMZVe0U0ZhHNTVCjY3zrCpe7HtvvRpjTf7guvaCrkj4d4np8
         d4hjK/2FX1jPNcQkZOrVy/f2xuJ2EIO60ahwFJdwgyYKxEx3+tx5u1mDBWbqQeVSicYB
         G4lRkB+8cyehLX86KxEKHqMURkFOt23nC8UTpbQeyxyRf6hR+1vvrfUqhAirpPZiddgX
         dt3LDPZcoDRCDL8YOeFOWZvA+uBvZN3znsGHgpeYiXXXP0PP6otq0Kq6bh15VEKr4KSv
         KQZQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5325ye/kDEW2riC8P3UEx5w4sjifMLJnA8EJ+7mYSq/W5BWQmR2F
	JRV3d2y9PDJV4FmyBQullQg=
X-Google-Smtp-Source: ABdhPJwazS51CvVMS3LyB555s6ZFN9ICVC9QcEfseHW6mJVxeIvcNJqdjTM9W6QyW6Nm5zlcuRNCew==
X-Received: by 2002:a05:6902:72d:b0:64f:3cfa:dfc7 with SMTP id l13-20020a056902072d00b0064f3cfadfc7mr40455545ybt.224.1653667010856;
        Fri, 27 May 2022 08:56:50 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:844d:0:b0:64e:18ce:57de with SMTP id r13-20020a25844d000000b0064e18ce57dels16536167ybm.2.gmail;
 Fri, 27 May 2022 08:56:49 -0700 (PDT)
X-Received: by 2002:a25:3188:0:b0:653:885c:7c6e with SMTP id x130-20020a253188000000b00653885c7c6emr16801842ybx.576.1653667009405;
        Fri, 27 May 2022 08:56:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1653667009; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8CUlFd/0wM8xAOK6snWuIavlE+AAT4eCrzwI9AbU7jTwdrOYokODKGQ/KEsMjip6P
         n2/OykhrmwSKHN52bSugSNNYkXPnBzR1nb46FEGnx0jU6sEVdPGLK/cfIkN9RftH9541
         gr4RxQ79Q4eyC4GwIEHTkQRO61Bvj0enBR5eftHpOmw4PeCBTpNnBp0X45hA9u6c7YMF
         OiKfOwm03I7dPBVE+h3ck9hxJXQ4L5ooHldUNMucYytksPuyZcGq+1UvBlFKbjbE52u1
         wkHt9rREQHaBfYwTFTWUpWagDbFLA/WXKFSpTnRdJirIiDFMbKsLmg58yflygrfPcQts
         qxng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=4j71EwPOnJNYnUx5hLsE6wyrm8y+1x5D0lJUWvi85FQ=;
        b=C/QataiWjHLaArD+Bhtot+TjdkT+e+hD47YAIyuqkCkCKlr8AUCNx1+cWav4cHJDuP
         aRmka4adHHe0eBwv0EynX1286jQBm7vTtRxTDszFAzaqTZbwHdddHetiociBLS/KnYxj
         1FRmBknNPhhdJuxiwgXPEdF8Ukyj94/pWj5zfDdAm09PIN639UGHjzeDn60d+MxrwCk8
         Qa6zPV1uUdHTOgHQGEAv3d4DnABmGsb2PBDJTo64QWLDFNi9L1i30uPmd1nkKTvLwHsj
         wwMAZGVKGesbzOrrk8khXP8GJCCZ6dch+8REvLllDAsOiRpr9IHW54coGmqwA0Su60tz
         LWLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=s1Kdfiux;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=eDPKHqnW;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id v2-20020a25b802000000b006500741258esi174410ybj.1.2022.05.27.08.56.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 May 2022 08:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24RDqvV1001695;
	Fri, 27 May 2022 15:56:49 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3g93t9yp9e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 27 May 2022 15:56:49 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 24RFtVOn019575;
	Fri, 27 May 2022 15:56:48 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam07lp2046.outbound.protection.outlook.com [104.47.56.46])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3g93wsj5kc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 27 May 2022 15:56:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eY5pW6ziX19Q+PTxl2OAikDcwsxZN3rjSduw0VE9i1eBRn2pg4gzFEfrWh3yvFYvf0CgMjOOcSiBfkr4Ay6XYZIGihp7CUr7c517pmjZB1V5p4OSzYhwUCYkjkCD7e5MzA1lq1NZnpKP0A/5fwGpd01RiI5Nqb45pK/7va02Wt0NFU8HCKvMyboiNmnOrTNHY55bHzgpMuMmhp/ZoMVR/CkOYoRIOaZUY+LzNzPuVvrpaIdIPF8aguCNAwu0bckfL5rCIauqyTclxEopZkaA4VwfW2G/f1+g5ltqlrg9czYUNleXxYHZc7O3LxOQaSASOCIJy5PW6Jah1/QVEcr5fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4j71EwPOnJNYnUx5hLsE6wyrm8y+1x5D0lJUWvi85FQ=;
 b=N18eseNCAWxCPdxUPIPz7xDrN5l127qTv7YS4OfgPGYvqn1mCvamonoKzKaT5i9/uTJQvSslQi5l0FDH3JPatfmHctfB4+vnkQBaFZu2LDE0JxU/PEYhwQbhyi8qfikZoXEvGUKZZqdxbUSkwB+oIzgeheKUaegkexyxPpukI1vti30052VajEi4d0cCIupQqpAsLTeQGOWIpr9p97S2sxTKUNJKgvxjdoUYjGruiZJ4slprxoLdZoQwF3fTSYPaZJosqj+tQzNj4VhZQIT6ZvUO69Ec245Yh/4mcKtpxhM0jerjioZRBNfsMmhLQ5wP6ua97Z0Qmq9J8sWqSVpq1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY4PR10MB1463.namprd10.prod.outlook.com (2603:10b6:903:2b::12)
 by CO1PR10MB5506.namprd10.prod.outlook.com (2603:10b6:303:161::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Fri, 27 May
 2022 15:56:46 +0000
Received: from CY4PR10MB1463.namprd10.prod.outlook.com
 ([fe80::d4e4:5c6a:2c03:94a9]) by CY4PR10MB1463.namprd10.prod.outlook.com
 ([fe80::d4e4:5c6a:2c03:94a9%11]) with mapi id 15.20.5273.023; Fri, 27 May
 2022 15:56:45 +0000
Message-ID: <d115fd35-55fd-598f-1fd7-0e3d16da4301@oracle.com>
Date: Fri, 27 May 2022 10:56:43 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.9.1
Subject: Re: [PATCH] drivers: scsi: Directly use ida_alloc()/free()
Content-Language: en-US
To: keliu <liuke94@huawei.com>, jejb@linux.ibm.com, martin.petersen@oracle.com,
        lduncan@suse.com, cleech@redhat.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, open-iscsi@googlegroups.com
References: <20220527083049.2552526-1-liuke94@huawei.com>
From: michael.christie@oracle.com
In-Reply-To: <20220527083049.2552526-1-liuke94@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM6PR08CA0013.namprd08.prod.outlook.com
 (2603:10b6:5:80::26) To CY4PR10MB1463.namprd10.prod.outlook.com
 (2603:10b6:903:2b::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 82c09266-54ad-4376-558c-08da3ff98032
X-MS-TrafficTypeDiagnostic: CO1PR10MB5506:EE_
X-Microsoft-Antispam-PRVS: <CO1PR10MB5506BA3B88DA55AB4138070DF1D89@CO1PR10MB5506.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: //3NIPfdNe7kgv9IXT7JNyq9IYoX9h3KjaUKtCslX68a4RZp/8PckGADg+4ou8B2Z/Tm35+nCVPufFUSw/2xPVQOXX0Psp4l5ZGvOVIIVO0Whvx3yE5OVvdZbDR8aNriseNUeETf4dluvGoILJAmi0RAwPaPvxW86BBKuHt1CgKpjyHErxGOdAHp9RGsScwSQembYbmxjg54GEdpkzvR93+FSQdH9+dmKmq9BQFijdKdQo1ZYUPF0uYQ82LL811BJZnCmJyPdDdMLYMNnXu1LSPDONjpnp1ynOfSJ4nAV55uKvxYfJEZ62+q46353k1xbbXWA1+JBPgsYv9EutDnUqJpOySPcOKuCVGYSzcE9pu4h694Vzr7tJK+FsGe2w7RFjVQvkjezP5EzyT5B9uRDfMTfiEXUwOCg9/qroyp0jgNWk8TXClR0yPtCy1EIGVTMDjbNKRTFIXEoc9jW05bKFTWGLbUZuDh8wwRHcxyCDIvkLAC5QrgzUakqW5mjk7R8qV9H3ENZ/K8V/HEesPIuzE4OENkwjqlOGHszffu43zL7B2Y1x9MlNDmyXh3DmrDd9VQjbXJeDIi0a97l/Wk1MhnNj/3lxlIg7YuA6te896xoc72G+G5DJVktT3R9Cvo8Zo5j9Y6J01A4VRiazr01lx7hFkGJdu4wAIRBI/TkoPnZgKTbLbEpLo/iVUlKuAbaUx5moGzHMe1ccDqf2G+zg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR10MB1463.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(508600001)(316002)(38100700002)(53546011)(9686003)(6512007)(6506007)(26005)(8676002)(6486002)(2616005)(186003)(83380400001)(86362001)(5660300002)(36756003)(31686004)(66946007)(66556008)(66476007)(2906002)(4744005)(31696002)(8936002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFhPdVhvYW9ZN3doMkd3VHVLejN5d2VmYmFoMmMzK0pzVGxDRXNIZkpQeEw0?=
 =?utf-8?B?THc2MmxZeVJwRkdYVlArM1R1cUkxcUhLMktMNWJkL3BHYUlEd05VdTRiQnRE?=
 =?utf-8?B?Y0ZzdXpWMS92M2pvdldtanU1VGlSdGplNkE0clZJRm5IYWZKUmxCOHdrTnVx?=
 =?utf-8?B?L0NBbFZuNHNVNmtPS1pweElvamJXVloveGRlRjlvUHNQclc3NmY5dWFVZXZy?=
 =?utf-8?B?aFVOMS9VZStlY2hlUUw1aHp6Y1l2U1VGUXlPeUI1QlVxMzVSS3ZmNkhkTmRh?=
 =?utf-8?B?N28rVlQrWVlxUDBOdGJjYnQ4L2toU0Z1T2Y3TWh3NktVOGI4MEhiZCt2RHRq?=
 =?utf-8?B?MGlFblBXb3NuWXkyaEZNNTdXWjZrb0psZEV1YmZzMy9id2NiWVVYR2haSlBF?=
 =?utf-8?B?eVZqN2FULy9JNWRmKzlRZkZlQkJ0YjNNM2I0ZURKaXUwdW90VnRLZEE1WTBU?=
 =?utf-8?B?aElVN2NoNWl6TTBveHV5V0laUlQ4OGlMdG92Q1QzYzR2WVpCWnFtbncySFhB?=
 =?utf-8?B?VTVGZFFoWUI1cGhTS1p2UXdqcEErSGYwWG9wQWxGbVRFdXNkMmVFY1RBWnQr?=
 =?utf-8?B?YnJab2U1VjkyL1lXODdob2RwODZmM290UGJkZ2xsNitQUy8vZ3VUcy80YlJi?=
 =?utf-8?B?OElaUkxnQllrRGtSc1pVcmFtQlhISHYxUnY5c1h1L0c5bG5PRHp3ZGowZ2NZ?=
 =?utf-8?B?UkNwQ1puNGg5MkJFY2Y1ZWRxOWd1cHFMaW5FekxTTjV0RUZvY1FYK0dXSDUy?=
 =?utf-8?B?UmpnZE05d1hCR0w3Wm12Z29lVUZYUHlhSGpLbk50UXFXWHFFRHN0WUlpbHNL?=
 =?utf-8?B?WGtlZko0eXdoTjVqMWIyRDZyditJTlg0VEVBWmpJUHJZNEtGQmNDWENKdExY?=
 =?utf-8?B?M1pLMkJZRUU4a1krZEhFdHArd0RMd1J3SWVBbWxMU2ZlMnJqSEEyZFBLV1Fu?=
 =?utf-8?B?YkFtZGY1YzZldVEvS2RNYm5pUHp1WWl4K21ndTFjUGdhMjhuYnNEZis2OVJr?=
 =?utf-8?B?Q3RlQUk4cTNGbjdUWkhhR21tcmZIamxMSDJSMHBFWG9qaDVmWXJHc0ZXRDU4?=
 =?utf-8?B?VnBPWmtWS3pTR2JpaHg4c3c3ZFRuK3VWSnR1L1JkYWExdzlpOWhqWFFNcnBV?=
 =?utf-8?B?eUdIMHMxb1hOWTh3VW5TWGU1ZjlyejVIUEd2ejM2SmNkM3Q2c0VaaHUzcWNC?=
 =?utf-8?B?dGphVjN0R1ZBTzMrMFo4VFdpSFRsaitVOHlRcTVRd1JrZmR5dXZRRC91RXhi?=
 =?utf-8?B?VklwSmhIdW1Qc0l0SXJOb0NDYUdJQ1NtM0NuenVhdUhuN1RHMzlydkp5TkRV?=
 =?utf-8?B?QmZtWE4yU253MjZGU1BKT2FqSURVcFJvQU43aERrdmNEbG1iMzdlcTB0V1cy?=
 =?utf-8?B?MFdqT1IyU3JvS2gyWVcxVDJPck1OTllwWEVYYWEyeEY3UWFTOEE5MTEzb01m?=
 =?utf-8?B?ZlBkOHYraHZ3NVpRS2xCdTVPRUlQZFhQaXVvSXlJT0Z1ME0wT013QXlrNGxx?=
 =?utf-8?B?WUlURUFFdWQ1OGxFRjZTMVppK1JCUEw4SWNuTS9wbVQrYzBLLzJQa3FuR3pE?=
 =?utf-8?B?UlJjVXAyNzcvVTgvaVhxbDhmQzhqVjRUdkIrUGJYVW9tU01TczZVbXVwOWxR?=
 =?utf-8?B?bjF1NzZHNklBTlFQYVlhdCsvMXBwVEsvWUhOMVhnT0I1eGdsZHBvV3E1V09J?=
 =?utf-8?B?bmlFc0IyNW9xV0NUck5NcWFrSDBtOUcrSmNmbDBwd2VpRlAyalArWmZIRmVI?=
 =?utf-8?B?UVBEOGFDNW5aMFdQdlBYcmlxM2gwL1o2Unc3VS9PUHcwRDU5UlhuWUFWakRy?=
 =?utf-8?B?bU9IS3hlOHRVTlU3enJUVU9IUndpRDJBbmRpVms4UXE4SHlGQWNVS3hZOWc5?=
 =?utf-8?B?ZldROFozdXNYNHZtQ0hCZURDT3FZdG9RcjBMc3NhSnU3OTNKMEZlOTNqODl6?=
 =?utf-8?B?RTgvNzNlQzZpTTJqYWVZbkZMR3Z2VzV4Q1FMN3Z6alNPUUFjeFJEZnFSRVhl?=
 =?utf-8?B?cmJzclNxUnRvTVc5OXlXQ2cwNDMxNnI0M0FUWTBEOXJyalFZMkdoRjIvcXoz?=
 =?utf-8?B?eGgzb0JxREVIUUN1TEZpN1dhRXJkSmlmeXA2UHc4QXJJallBbmFnN2twYUQr?=
 =?utf-8?B?ZTBxK1dvVS83YjhNM0lhZUs3MjRzazZCNEpvbUY4Z0RUd0k1eWliRXNadzhp?=
 =?utf-8?B?TXArT0taWVRVdmhxWDlqTWVqSTJJT25vUWFuaUc3eVg4QkVEb3M1V2dWckE0?=
 =?utf-8?B?RDVwYlZLRnpCVTRlSzNZaHovU3laaDFPcmxjclNvTmVtR2YrNmU4Z3hvalJL?=
 =?utf-8?B?dTR6VXdNb05UU1ZRUkFsVmhBbnVmaXRNM3lsMHNRZEZjbmVOejZHSFRFNVNm?=
 =?utf-8?Q?YrDeJXOd3QgaUCcw=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82c09266-54ad-4376-558c-08da3ff98032
X-MS-Exchange-CrossTenant-AuthSource: CY4PR10MB1463.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 15:56:45.8722
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uZpo70Xwz2b+ELVcVAuz60TtCB51Aj30QnBAa5oNUOqpLlsDiA4wyhrjxrsWfBT4ZW+NAM4QnKOFocEhZf+SYpl8ME63omoa5js+mSCpAdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB5506
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-27_04:2022-05-27,2022-05-27 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0
 malwarescore=0 phishscore=0 mlxlogscore=863 adultscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2205270077
X-Proofpoint-ORIG-GUID: 9EtN7duY85g23BPGpvM4iB8VzOHKGEQu
X-Proofpoint-GUID: 9EtN7duY85g23BPGpvM4iB8VzOHKGEQu
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=s1Kdfiux;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=eDPKHqnW;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 5/27/22 3:30 AM, keliu wrote:
> Use ida_alloc()/ida_free() instead of deprecated
> ida_simple_get()/ida_simple_remove() .
> 
> Signed-off-by: keliu <liuke94@huawei.com>
> ---
>  drivers/scsi/hosts.c                | 4 ++--
>  drivers/scsi/scsi_transport_iscsi.c | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d115fd35-55fd-598f-1fd7-0e3d16da4301%40oracle.com.
