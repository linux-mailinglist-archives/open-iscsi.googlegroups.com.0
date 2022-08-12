Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBQMQ26LQMGQETCURNAA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113b.google.com (mail-yw1-x113b.google.com [IPv6:2607:f8b0:4864:20::113b])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D44590AB3
	for <lists+open-iscsi@lfdr.de>; Fri, 12 Aug 2022 05:25:56 +0200 (CEST)
Received: by mail-yw1-x113b.google.com with SMTP id 00721157ae682-32e6a92567bsf16524847b3.10
        for <lists+open-iscsi@lfdr.de>; Thu, 11 Aug 2022 20:25:56 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1660274755; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xd8/KLnAdz9V0DAH41JO2xanyU6RXTy8+XhP0nJ1mFtbLObmZHjugipcfQBKvL8mtm
         7Sukrvj6uCp5dxGF1B/4HWZbFV9I8r8y/v9eUEhZQV4InLcgOcdpK1x7UHUDCh2MWk8/
         goSQqnaT6Ayc7UOZg6bFQqXPh/JPUBq744WS8lobzwfh/7Gwr3Nm7dF8R0fBlVZ8eMgF
         7IgGTk55Yqnm7buTiPPkwKk2h+gimXkszBMgCIayS+Ql/TZCH1WnMBsjMAO2jaKXT4VW
         Kdyma0jlHzveLdc+XKoyxzigyiykPV4TgeOfrptD3/ZRZ9c7fvktTpFalpReP6h03uf2
         ygaw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=Tv3SsXkpVHYJn4wahIC7mK15TjVHxz4L1fChgEMVaYo=;
        b=owYqrhu0+gz1jeAOytVIxISKqssn+otL/SSyXeNzApaE7b5VydD40pSqtpnCLQ7g0l
         d+9XfgQSj8Kt3ZZnHeIHHxHTcACLl4jgzb6uXuMBDA6bGx3z4S9pbI8D42E/qcjiTbPE
         Crp7WadMy9CHO/GQsqh87twk2WFT139ZoQaIk8UY2yKv4a6x3GYNX47A32Myabu02iHP
         o5ZMsR/jwk2/hGqfxv+2PAtzs8Ttzh3XHDv/9nQ+LL3zVsvOBqFd3rWVaW7pQPrHG3x+
         pf/zFrWsZzRryqhTbI89Dy65GjOsQfef2q6nLA4kL/ubjDEV2TvMrSItqJVYNR0c8Ecz
         aY6w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=su73na8J;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=eEYag+9D;
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
        bh=Tv3SsXkpVHYJn4wahIC7mK15TjVHxz4L1fChgEMVaYo=;
        b=tQrfKgHlYlzUYQrLBWR19GjH2QRk6Wqo8TLPA0gbBMl+6DeajQ2EML1KHzu8gr1o7F
         E+wxHltAQiB3mTQpoiKjX8jieLxq8lNPw3edBwBHVGuJ5cUe0ORHai4nP0yNQdcVHPqU
         /2G1XmUrdSyobZZ6rkSMiopPfj/Kv38gGniuRTjxdkeQRIjeVnPSlNIgjXcyjHVT15P6
         rg8R9VpoYwmtKalPjoYQzctUWqLKyTqdDf8apReSG+oHu/xr6MOZQXIjOq9h4npJHT/3
         V2BLlUto8AitGDs5+Lw+uMA+Kjqnazmr+ZyG8C6np9cS6yD8AP+4zbDtE8jn5kt+Egws
         Tnqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc;
        bh=Tv3SsXkpVHYJn4wahIC7mK15TjVHxz4L1fChgEMVaYo=;
        b=PcTCY+iwmixjGeWlFU1plFMg8eUKfZKaq3AtJSHDTKX/D0cQMN9t7eA2cfiXm8zQFo
         7EZbObTp9BhweWGW0I3qyy4fBMZi5EFiMDwi1tSdIn+g+1wmE70gWYe4AC9Aa72OPIPe
         EgJXeMNpp+OsZJiVy/g2xKuEZq23KQXERDKsP6FLORQi3G8jfvXdBur2XNfVWc9r0GA+
         C32+n4Hyv/3gB3Tvzd0nC5VZanHR0jWYohroWtiHfIeGnHaLXMblVpW+UQqfgY+PI21f
         T1vi7+9ztedRwuFztUevBDPtl5wrDqcVtdw/51iz4MVda5Cx6VIH+QEOlSzE/1ofpK9S
         eNmA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo0DZ4CCcVzxQG0G3H35Zvn1ATGdhyu59jKESzZxEmYtM1AY5+kK
	b4c3S1chO7hVGrbTafsmno4=
X-Google-Smtp-Source: AA6agR6/dzdPq7hrgw4kMDy6rSdL5yFh5N56xsp6S53OGPWpw2BLGqGpJdP5XRDHax2eSe0ozDeDlA==
X-Received: by 2002:a81:52c1:0:b0:329:da4b:bd4c with SMTP id g184-20020a8152c1000000b00329da4bbd4cmr2229402ywb.471.1660274755222;
        Thu, 11 Aug 2022 20:25:55 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:b124:0:b0:676:e628:3c2f with SMTP id g36-20020a25b124000000b00676e6283c2fls2160035ybj.0.-pod-prod-gmail;
 Thu, 11 Aug 2022 20:25:53 -0700 (PDT)
X-Received: by 2002:a25:360b:0:b0:67c:1fc6:488d with SMTP id d11-20020a25360b000000b0067c1fc6488dmr1984280yba.103.1660274753413;
        Thu, 11 Aug 2022 20:25:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660274753; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pa7QXjkwIxS0iSCLVNT6Tyz/WhmHyQx1xaf9hj485uDg/cmhSnUvlpJHNjExu5XoCc
         pQRyaoVDot4MAieEgYKpMAMSDS9wIb7i5m6DTnTSboBYvQpxBLba6fikJxaUjVgE3p4z
         YDoMaAOOt1DM5U+G2MPwjlLFPShobRwC7EuvatRlOAKW17MGxBhBIL6yTrdjfOERLkDw
         CYAOeiq3rPOr0UWnVwohrVzksGCw6cmzqhCZlihlWe8+2wh+2+d/ZAuOj0utYsriijsC
         Mw3z25sTaoiSmY3JL6FLJEYl7pMvTZ0HTLrb8EFatmSs3AbijMl6tdeZACWQAWzBwAHC
         MvTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=eTUGvTol0odCKhRha5xjUECYTQiEfe2Xz2tQtPF120E=;
        b=GcTABz/ySi4Y3ZKGsFq2gG6vcdf2S4NKU6uPbON2YCrYoWqi5zv/VkO9Bfb0Odt6fX
         eqNNYHEV+Hf7X50Xnz3GImSTm+7kG1OnimsSGQpQNTL+QwGFmqk4MEL5dqycLSijilhd
         USJ66hTU/RhgzK1XQ7fyd93esGehzKw9WJd+3XyS3245xA15J20IY/7vlgN0eWpbleHM
         5CkKqoqsbSpJ9COj7zw2tNlsN0f26c24mX817kMdIlhswxKRNVwwVIWdmumNm73D5WqN
         gF8nG7gdiLvKajxL7FL7olD3iruuqPyX3bY1aYo5oU7fJpnXp2seg0LdRm1gbZxB0f+E
         Eqgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=su73na8J;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=eEYag+9D;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id y129-20020a254b87000000b006716b97bbf1si49947yba.3.2022.08.11.20.25.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Aug 2022 20:25:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27BN5Wpu004258;
	Fri, 12 Aug 2022 03:25:53 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3huwq96fwk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 12 Aug 2022 03:25:53 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 27BNWWLI005025;
	Fri, 12 Aug 2022 03:25:52 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3huwqk9hfp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 12 Aug 2022 03:25:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nNOGohh0DObh1nvVTZn2ZZt1CTAPLbcKBgYFcv2ahnNcMglgwq+Hl2hWwkbSHWvYTNe3umOWdnb8tMHH1ddOTnE73tj88T26GYbi9YNpjqL0ltiCPL5x/J9jj53fGaR1S4naYrhN9Ok8haYAXt/xXTq2eRjXTSjqrZgG2Avm1vIoYuSgLdQPuofOqY2cEl20CM/Eyl6B+H57140qvNwdvmPMXN/jXpwLCkvNr40QLHhydseYAgErLdZjzv7636RGd9r8U6lUNcM8Tf2Pf+Xr4TZIB0k4zQD4ClpTFfDx4D+2pmG+h3Utg+W6DWKxmV/wOV3QCVwdYUwJ17bLMRhZ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eTUGvTol0odCKhRha5xjUECYTQiEfe2Xz2tQtPF120E=;
 b=jDfgatxOKOF178La173k13TD8cSxbkpEdZhWNQb2pM2Q8VCphkrZqK3FXywee7JOJmvFjyfcTRmRqu61aRp6v6Vl5wdmYEGpwqoVXDNWeILYt53z8ayGT55HDWTg8zC2HA0pfVtzzgUq0bA16zo5MfN/37yU4K46gNfsGHPtmTANRioJh27JLgqNG5X8ZMrhWITxwoNVeSVQHIF3BavzNa3zLC6MOkgYXuxOiMY4VrsuPcT/p8DKe7uvAQ5RDYY9xsE494cF7BzaXp1Hk2DHmlr+NI9W9PkAs/O8PwZJ2EPNYPZ4xSfwF4DlV25pWMkuPFoqa/fXnXVbspnQtMf1Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 SN4PR10MB5541.namprd10.prod.outlook.com (2603:10b6:806:20e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Fri, 12 Aug
 2022 03:25:50 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::8dee:d667:f326:1d50]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::8dee:d667:f326:1d50%6]) with mapi id 15.20.5504.025; Fri, 12 Aug 2022
 03:25:50 +0000
Message-ID: <3ba71030-982b-c98b-78ee-ceca74da3b57@oracle.com>
Date: Thu, 11 Aug 2022 22:25:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: [PATCH v3] scsi: iscsi: Fix multiple iscsi session unbind event
 sent to userspace
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: linfeilong@huawei.com
References: <20220802034729.2566787-1-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220802034729.2566787-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR03CA0004.namprd03.prod.outlook.com
 (2603:10b6:610:59::14) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 32df8e28-6cca-42a6-2d04-08da7c125ada
X-MS-TrafficTypeDiagnostic: SN4PR10MB5541:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2BTwDijwiP/5xCDwnic1b3wNp1LnR+eKYEadmZtSevhQ24WbYxEJ0VGVFqCTE7brqV038CboG51UI7Mfta7IsfSIkNnYB7xzYK6NjJxGipozIsrmI9C7sNTOpuiq4QSI4RN+Gi2xd8IyOcopEx4jE8J9dSkSCISOH6hcxnIh9txhMYMUcIiGaIOOPpEI67xysAHUCBc63d8hS3e9uYmsXL5PgJt7wavCO6r8BNmcnb3eE0litji5OM4zgh0u83apMRv/IphhocEJh4uO3Y58w1kLIW/6h5iX42TObN/WZ4R/T73RZulCj8Z/4aTsEGQ2j7duZ7IibrZSFPM2DPiRz2Nw7VS9GgKhFnbfLiEWHw5yJ/daD9QzOIoIbEP1iP1SsvrFOWYZw1wTHMTxcV06dvBlo3jCoJ2T8clth2UpkTalNxtpFmqrzaqIjXayKZD1tPgCwF1w2+6jJrh/IITTxLInj+Qx8lSHPi9sXgapO7Qw+CBCHJTHxgo+pQtzYr42vVClXHna2mm8vzx9CijO5JYGhY9wxk4kzH6JSIQ+8Q7OOWB93aUjEMyGnPyc9vu5DXuzfzou0nHqAR+KaJvgx35B4jOQIjqUq/WSJms3BitON/w1HzN0naHk1mQSmWALYN7pWSWNtzOPg0t0zn8TB62FuSNFqzVyF/hZIoDDSFH8lO3iLQUpLEfo7bAinndiZBMiaf5CmsjQfaxj/MHHy9eSDgn4jlb78YmpLUSuHaEfaYhQcO3yrPz9p9aQ0lO81ueJQ44v9jPIZxwdhbxKb/WKf/kpA9xdXswdvp/vlU7QKuJjYT8noxB61QyqbGDD
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(396003)(39860400002)(136003)(376002)(366004)(2906002)(8936002)(83380400001)(6486002)(38100700002)(110136005)(478600001)(8676002)(66946007)(186003)(2616005)(31696002)(6506007)(66556008)(86362001)(41300700001)(5660300002)(6512007)(26005)(4326008)(31686004)(53546011)(36756003)(66476007)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGJXNkRsTUhJMHBwK0wvUlZlQ09wQ1FiV0hiNFo5QnB3bGRLSi80Z055bXUz?=
 =?utf-8?B?QWtPbHJINnBZRFNvejRIYkVOallXdVBNVFJMZHJJWjQzdXRTczcrMnpJYWxY?=
 =?utf-8?B?TFU4QXBkb2hYMWh0UjNhS1FVNS9hVlhXcGZmVCtheDZ6dVg4NVBYbGhBUFNy?=
 =?utf-8?B?bmVoTG51VHlKYjZLOFpaWWpjYk42T1R4UGY5RUxuQkRuR1lWOGxhUVhCZ1ow?=
 =?utf-8?B?TzJsWjkrSXFsS2F1WmZFS0t3YTlKaEhSU2plNDEzbDRoY3NxYjNqNkRzWnJF?=
 =?utf-8?B?eENMZkRhdlJYMkkwV3o4eHNoS3BEZzcyeXFWR0g2VUJsa1JESi9aMkEzdmcr?=
 =?utf-8?B?U1pvanE0blpzZVhPaU1EUE1kUkM2WjBVaC81cFRFdVJzeHJCT1NkRmc2UkRk?=
 =?utf-8?B?SjV6a2Q1Q21JMy9XTzhZMlZuRTFIeHB6NGNqb2FJem1xRkViNEZqU1F0ME54?=
 =?utf-8?B?am1yWnFXVEZLcUlKdk04QlZNeEVscmlPNW9QVklCaWswY1FMM3JZbExsS1px?=
 =?utf-8?B?VW5Ua3BPWmVka3VHeWdKSUY5MWRJRkJ0V1htU1hXcWtzVlhyVXdDMXVKdnVM?=
 =?utf-8?B?QjNzQnlEenAxY1RQeTluMlY2RkVxc3R0NjZKU3kzdTBXUFh5TmRSdGZoZlRu?=
 =?utf-8?B?bXFOdzgyNGlJNThLWmpRMXpsNDBhc3pDSmZSbFhWZ0MycXNVbHpGMUtIbE1m?=
 =?utf-8?B?QjRSdUl4Nkd5bjg2NFo4cWo5Vmh2bXVWbHhkdk9OVHFodzR1ZjFiTFRycVE4?=
 =?utf-8?B?YUdiVkp6MnB6aVpvUzR3eWdXVXlnYVR6SDJTUXo1cEtiL1Z0aXJjV050RXNw?=
 =?utf-8?B?RWc0ZStBOUtySWNTUUxPZmg3MWRuak9YcjlsUnlTU3oxZmcxbWtHRzdhazRZ?=
 =?utf-8?B?a2wreEs0c3dWa1h5c0tKR2IvMmFvcERtT2IxRTk0b0RLT29mZ3NLRWFtVHRh?=
 =?utf-8?B?cUN3UjkzTzkxRWtMeWwrYm9obXlJaDRMOHQ2WjlyVUY3QlZLcExEcXQvNFdT?=
 =?utf-8?B?Q3VZM3YyYjBHV0I0bldsVlgxRyt1bWZJT2lYYUlmTXFOOGt1eEFORkNPSmdF?=
 =?utf-8?B?SkpRVnNuNTA0eHlRMHZrR2Z4OGRZZlMrZWhXdCs0TjZwRWVwWW0zK21DYUY5?=
 =?utf-8?B?TWF3ZXFzZ3NIU2NCaEMyRVIvVGd5WTFlbjNka2NwR296UWFwWjlBWi9meHpH?=
 =?utf-8?B?bGdUa09waXg4SUl4K3ZYcEt1SWpTV1YzOFZkTmU4c2oyQk1CR1dWR05yODQ1?=
 =?utf-8?B?Ull1cE9wbFdPNWFjWWUwYTN2VkZ5N09BVmVKbU1HbllEcVVpNFZIelFUQjZD?=
 =?utf-8?B?VVRrTEI5MWlPVUs0SVB0b2lVKzBYR2ZpMlM5eE5SZUhLdUZxQ2xVSVkvUjRF?=
 =?utf-8?B?bmNlSGVnTldPZmp5a0daOFhFR3lZTnQ5aDZvYWcvOE9lbURxZTAvSUtJTkF1?=
 =?utf-8?B?WTkyRG9BbG5PSkJtWEkzVkFXOWlLc2JWVzMxMGpaODJ0MG4rdHRaZkYzdDlw?=
 =?utf-8?B?dzB3TlE0am8rTlo5SzRoZm5meVBZN3VqRjUvOHpTNjI2b2xVcllvQ0ppRUZm?=
 =?utf-8?B?bCtDUDlZNlROdzlZWWVOTU11R3dSZ1R1VTlISDM0cUQzNDVYQVNhS1M1VDdw?=
 =?utf-8?B?ZU0vdkhRc1JWOFRnR1hGdVpGZk5ZSmYzaHlobVh3TWRGTE1VSTlzWWd3endO?=
 =?utf-8?B?YXNuR2Z4RTB4NTVaNzR2RWZzNGlYdVl1dUZEaGJ3SlJ1TWYxVmZMd3BOdFJE?=
 =?utf-8?B?c3lrK1orUS9tOUlNL1gydHh4TUQ2SWpLbjkzM2UySHN4Y3ZkVW1Tbk81cG1k?=
 =?utf-8?B?OHh2a2h5U0M1SkRnK0ZOcG5uUFpLR256cWxvSWJ1eU1vejUyVEdIY0FLVGRu?=
 =?utf-8?B?YXBEbWtLbFNvbCtvWE9BVWdLM29sRmxGOFVwa0RmcTNDL3dBK1dBVUdWaUJG?=
 =?utf-8?B?RGp0NWhNZHZpRTE0SEVXSW4raXpPR2I5elJnd2hnZEZMcmFrVG94eDNsbDFQ?=
 =?utf-8?B?eGlsUXhFRU5ocDZyeWNSZy9RajQvRDhSR05ZTHA4NzJtbWtpTmVPQk5vVmhx?=
 =?utf-8?B?T25aSmpQeTNMV1hrQWRlYnArcHN3WGFvVk9Wa1lxQ2dtUHlrK0NNdXo2QW14?=
 =?utf-8?B?UVpMQno2T2FXN0xBYzJuSHQyMWpoSnA0L1NPdWV4UTV2TjhvcE1Sc3o2YjBs?=
 =?utf-8?B?YXc9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32df8e28-6cca-42a6-2d04-08da7c125ada
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2022 03:25:50.4193
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MvHVhVH1GAzXl177ZgIlAqbXQ5HlHgjI29mbFZ2AE+5ReoBermuC8gfwdyRwBE8Nug74clpZcvvwEAtPC2yPhfHAdSz/+R2ymIgOgkmXqx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR10MB5541
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-12_02,2022-08-11_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208120009
X-Proofpoint-GUID: 03F_f6XnYYpOeDDUdN6ZrJrqhlt5ex1R
X-Proofpoint-ORIG-GUID: 03F_f6XnYYpOeDDUdN6ZrJrqhlt5ex1R
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=su73na8J;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=eEYag+9D;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 8/1/22 10:47 PM, Wenchao Hao wrote:
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

I think we are ok now. Do you have a link to the userspace parts so
I can make sure we have everything covered now?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3ba71030-982b-c98b-78ee-ceca74da3b57%40oracle.com.
