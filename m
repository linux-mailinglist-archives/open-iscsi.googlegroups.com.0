Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBRPG56RAMGQE5Z5X3DY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9336FE48E
	for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 21:40:56 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id d9443c01a7336-1ab032d91a1sf46509385ad.1
        for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 12:40:56 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1683747655; cv=pass;
        d=google.com; s=arc-20160816;
        b=hlShG+ZzQ6EZUqsVt+ukRDRgXjuanyVQHSiWSmakkcLoj6E3S6eT644Fw4ZXgW+/LB
         3RN5AiDiynORGNos0qb7mTPyE7WhoZlT9aA5LA4kIEzx+KW+zMVEClM/yVVUztNXoC1q
         dangc6jU0EQHhVGihjdVINtc6Ztd88hmjNkPV3TH0Din4w4cqy9tSclWH+eZzEc8L5M2
         4/+n8oK3or8ucsn66/EK7Bhv3o++SqhSreDVnMj9+vOD1TbiUaFDHQFkN0G1be/YaRaO
         1M4tovXNczH2zibCfI4adFzYsETDDthDBDk7zebGAg4gcnmVPkyOrB56s7NM+0uQlt8L
         d43A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=5K7CEyEKUNs9CNzv/FTI2a2qAXWrSfOUWWg7clDZ/LU=;
        b=B/93pZewS6gn1CrUcn3bmz9n5gev/FZOpo1vwbaaa7oXnT5QxTc8gR40kWXAkJZLwf
         fTta3TBWfO4xVKOQnJ2gjVBk+RHajtE1TSa3Mr0hr1JqKJ69bRaMcneAwfyJAITMY++L
         s9hcrEhwIACdhrcSqpMDhkzezeXBOaBODmyuRjJy9UOq/37r3EZkjpkyuOnJvCFrW4W6
         d65E6LE7kGMK6hNoZ725KcdDat6khHW5aUMefdVMtz1vHhk99NRNl2CGB7ZuTp3DbcM1
         4sUlLBJNsuNLyhTq65mO8bb4D9TTJjT3tzYlmvw2OlC5Pl+goNfg0cB2QdLtn3k84Cqw
         0dsg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=B8+gUw0+;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=OTdO0IkD;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683747655; x=1686339655;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=5K7CEyEKUNs9CNzv/FTI2a2qAXWrSfOUWWg7clDZ/LU=;
        b=s0/ZUqe/8V/jP+i86mBsZesNTr5gElSuE7jpHW0z6poWz9stoAPFSNxI1zXs4TgdYq
         skgOITRJACbnDNyg1CNAfvdiLnehEugxftn1/idccmbpwezznlyKKYjp3gQn2pBpXtfW
         g+NtRl1LzFDnxC9oFOuoerGLl8vlKVN9fsNGDsVKjuYQ4I5RVAPHuYC/I6Ib0So1n8d/
         TqNt7KJ9E46c5gYeR2iJ1BEYP/p8TJk0j/owtfcjEgQOOeBzBfXslvM2uT19BahWNDek
         l2cxmg/CCR7oB4EbD5yMCvOOI7azhSjJ49H5Ie5NMgYgVU2CI3IKnBERka9Z5t0TaQh9
         fHHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683747655; x=1686339655;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5K7CEyEKUNs9CNzv/FTI2a2qAXWrSfOUWWg7clDZ/LU=;
        b=HnSXByUbi8DO3/R84kofq03XoZS1jnj2R1cidms7zXoiPYnfnp9TX+t8ijE/jA8gCI
         1FsDbYFKdS77GmLmESbEVloUEVhEW9musX8M/RsPrO3CZAZfctaidbCFjBJKGwafEnrU
         9J1IeDBdcjTKUJM/UTVuKsRw6MSp2MdS2uMkFa1r3H/97hE4QP6sqafpjcOKPTRsG8Cl
         lAuAUYlFsIPt43AH9NBqcGws5/gImQW/DImPlhhGS6328lEk0fm+5bIyEjsL593GwwP5
         p7Ru6Tcr7AgkSmOG36zjkbl/qu9yntiSvWt2T4cVo/s8Mr5OJ+X3KIvmvCAOOYzAtSCv
         TBHg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDy4BTTQEXwfUZxr8d0tiIMC8zYszzkxuQ3MXtlignxdCR1m8FRZ
	2CCCS3Mjn4rdSLn8U5g77fw=
X-Google-Smtp-Source: ACHHUZ4ZvzEGSIPqUx40PI7eZX2HMTsqjl/X6Htx4Yo34iT6nmc7YaQkcqeurRCnJtcISktYNt6cpA==
X-Received: by 2002:a17:902:a50b:b0:1ab:1972:6d1b with SMTP id s11-20020a170902a50b00b001ab19726d1bmr6684411plq.3.1683747655331;
        Wed, 10 May 2023 12:40:55 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:3fcc:b0:250:1af8:3324 with SMTP id
 u12-20020a17090a3fcc00b002501af83324ls2864383pjm.0.-pod-prod-08-us; Wed, 10
 May 2023 12:40:53 -0700 (PDT)
X-Received: by 2002:a17:903:1309:b0:1ac:750e:33d5 with SMTP id iy9-20020a170903130900b001ac750e33d5mr11256131plb.15.1683747653199;
        Wed, 10 May 2023 12:40:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683747653; cv=pass;
        d=google.com; s=arc-20160816;
        b=NKPzwOmoTNrIb3A0YGUWZbpX6vilGPEuvaYodET3/CRx1LPSC0+H/B3Zsu+WkPwGXO
         0ro0NAzoixO6AWGuw0EHXny77oaGGlOWmrUQyMzcK3DWWmuRdMPy53L8hkMfQpvl33Al
         hGRTI0io6u5UKi1cBCXBxTEBumY8+JdOepvfF1AU+MEtRN9OAKi0bcXmIUPr3VaG3c2u
         0sLlGaxhWX1WylbmVw1roELBvWYPGSU8VWEpDzTeyWfAEPumVeLU2Z8IjzQSbv/mTovv
         GVHwlm1WIXX2Ia65WVXjt7HuPBjftTs0xVeDZkRFksF3iO95Crovpnp9pBh4FTXx3lqj
         loaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=eIIR60RmOFytMDAFPXobPoXrU+a+UHuFaq6nKPe+6w0=;
        b=fVrhgJ2OQE9Bq9plO9O3yGSX9TrVFPWHp10tGvc2ivXtkprDKklE3H9M7wt1ZcLLsL
         naEo9MJEvgllO9pyZDRVD4Gx4ddj+x+SU94Vy0APQvTjkeEoDX+zKWKRaUSZ8NAL920e
         7veoqZcXwWIZiGWRpbzGTEysyRqU9LHFayLWKShukZao8AnZctuYL0i8o7mvBkxnSnjK
         me3XVu8clhKTJR2GIQyniu7cvKNdPXZNVNrLyNWu3/0Ac+ODm295zoQOe2DXuoq+nXfh
         sQO7euVwJWHXWxv49guZsa8Dq/rogiySiodwenk8me070j+LJ7zIm6dowid9ecs9VJBz
         CnaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=B8+gUw0+;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=OTdO0IkD;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id bf5-20020a656d05000000b005285b1a77d6si210769pgb.0.2023.05.10.12.40.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 May 2023 12:40:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34ADwqeS005094;
	Wed, 10 May 2023 19:40:52 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3qf7775fcd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:40:52 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 34AIAKAl014530;
	Wed, 10 May 2023 19:40:51 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3qf82xey6e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:40:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6VblMHPud3y9D+XIphikQnMj44xOksbJUcdNI8tJovdMjmIHui7uGJmCak1+vf8FlOhpPPXWuL0bIzNPE9OgDfHF6NMzKyQZm3/7rF1fRCicENXnKNtMuQADInIrjCBBki//NCaBOuxpJVH2d+ui8Y1etay2WPNVxJUUANNIxntsigxlguXrctnuKFpnFSa2Inxvhw4wFgymVXDZYXN0kbu9TN+RPQSZI47TzMZpYkapCdcaH2ZhFr82cq5IY+kVjEb5cJjSJjCEgi8nBpjdqO+RJRF8lyUFwb/hY/roacZ92vZ0Ls/TPOYeLydCFLR8q3dMudtI9esznn80LLV7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eIIR60RmOFytMDAFPXobPoXrU+a+UHuFaq6nKPe+6w0=;
 b=MPL3kDaByaxy7asEct4GFJz3quXZrROU2H/anbwlwsndCyVlBPfdoY7Od1XU4O0cMX0gdvxQ1xMX9vx/Yb9neU+irzJbim/50zCoeDtCWtQ9q6zOMxe0U0SWZ5RHnCQgDcjlzbz83FwY2/+/BkhEez8+g71nMPFooXJ1nH7euQ81kg4Szx91A0VuF5jvp4s/ORFHSz3OYoI2uVXhzMtTo3Cxha9dwfhrxqfdcm5cG0NkpOXL4v1SbygFMa76GaywVPburL57dl6+PgFBb2z84tuMMyJUATJVp9aT3HUR5dRbTpLM6jG+MJmK82a8KdzgxNBVehyRMpS8GnBrBGHHuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 IA1PR10MB7286.namprd10.prod.outlook.com (2603:10b6:208:3ff::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Wed, 10 May
 2023 19:40:49 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef%12]) with mapi id 15.20.6387.020; Wed, 10 May
 2023 19:40:49 +0000
Message-ID: <29152592-ac41-546d-aeb6-867c6de2c860@oracle.com>
Date: Wed, 10 May 2023 12:40:45 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.1
Subject: Re: [PATCH 06/11] iscsi: set netns for tcp and iser hosts
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        netdev@vger.kernel.org
References: <20230506232930.195451-1-cleech@redhat.com>
 <20230506232930.195451-7-cleech@redhat.com>
From: michael.christie@oracle.com
In-Reply-To: <20230506232930.195451-7-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MW4P223CA0023.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::28) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|IA1PR10MB7286:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b73cd39-7157-4549-49ee-08db518e74bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HrM1wSSSWoMgWzY+LN0KlZ4++Xtp+G325GqHx4pMt3+LYEpoVakenppherHYHpBvEqPsBJvD4L5Fia59I0CQPQDdmtrNcMfcqg15GZglMG0oGI4N+cOYmPVby6Uv9fiKOTJ7zQCoICvr15byMjd02ZO+NtY9IxEtvqEIuSDPEFsitEoQkd+pQLAKdsDCeXFxJ9pByQZyk0QZvQ0+OyDaz6gf0d9EJhu1emkWFJtPzYAQDgLLk+BwJqxoXKfXi1FliB14eqDTnsYBA7O3rEJr2Oe9bLs/rUfqAkTClD+ai/QFXfidtjDabfZ+tmLKjCcp1j4fPEoPkgkUJUAFfGY3nK2gFl0mN3g5vNkd7QtTxPOD7nHspIlKCFUWxXeUfmZ7EROsyQ2Q6bMf/fImCct0Kxhn00j6PsR8GpxIpPjBEM3Bv1K7FvSPDYETglcbX+te6aUNG6kvaK5gLtnJgZY1Jo+bo92aENN54Gv0ge5S7/dRUdmkEt7h7RqHNPFi3lMrphkBWlaJVlu6gwo993tw2Zg0LPiOogmV8nk2DuikxCQCl4zzDi0i560VZJhoDm4AtIMlTr14udqJC3aDpegrWqxgPWuKqQz4Nodfm+mrweA18Lz/VNgav88gNucocfR9
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(136003)(396003)(346002)(376002)(39860400002)(451199021)(31686004)(86362001)(66946007)(66556008)(316002)(478600001)(110136005)(6486002)(66476007)(31696002)(36756003)(53546011)(2616005)(83380400001)(9686003)(6506007)(6512007)(6666004)(26005)(8676002)(8936002)(41300700001)(5660300002)(2906002)(38100700002)(186003)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmpjMlY1MDVRdGt2QmUzcTFSc09mWnZCVDUydVdwQ05oQk8vc2ovaVBDdzVQ?=
 =?utf-8?B?Rk1IMVV4MkxmZENVU2tLNkVGWlo4TzlLWkdYQnZpdkIvb1dqOHk4ak10N1Ry?=
 =?utf-8?B?UzRFQm9YcG1yMmJxa0x6aENKQjdKYlIyUUJwNXhXbG5obkpoa3lrU1M1SDNw?=
 =?utf-8?B?Wm1wQjQvZnBHcG1lSXNFT0FNZTZ6WnYwU2pxWWZoUEVwNmdSWUFUNHRORm1w?=
 =?utf-8?B?VkZ2TzdvemV6dy9GdU56SWJVQjVtYjdWdU00YnZxbS9jWDE3TEt6eUpocTFG?=
 =?utf-8?B?RnVsWS9RMEkxVWdadjNRbkRKdXduZDZaYzBLTFN4WGVyY1U4Q1BNMERhMVFR?=
 =?utf-8?B?QWRtWE9UQ1R0S0tFRjJBVUFkSlV2SVVUbXZZZWlVdmEwL0g2RXIyT1FVRmR3?=
 =?utf-8?B?Sk1iTHpGS0o2YUEvdDl4WUxqRVBOOStGV0NsNDlmLzljMnJDd1FaMDB3L1d6?=
 =?utf-8?B?Si9Cd2YvTVB3VnlvMlkvY2ZOUDZOT3UrbnJ3T1Fhc1BZZDlEZTRqdnBoT1VD?=
 =?utf-8?B?SUtuYmdDajN3dlM0NE5YSFNkaVVkdFlSaWdvRGpZc3pSelI2V0R5UkI2UEJi?=
 =?utf-8?B?aHZFdGJDRVFnUUkzUlFjYVNBRVFhN3kvc083aGlLNDBHRFRhazZLOXJSdTdO?=
 =?utf-8?B?RGJLcnd6bEF3MVF4eDR4ZEtESTFHVEF5L0U5TDBDSUtWQVpRa3hrbTNiTFgr?=
 =?utf-8?B?YlV4NE5walVjT1pnUEJ0cjlHeDg4T0V1R1NJNDNpNkUyOUxES0ZGNmt1NEZO?=
 =?utf-8?B?SW1qam9kdXNrdFVaZngwTU1JdTlRRHFrNldsSzdCa2JnUkI5R1dOOCtySXF1?=
 =?utf-8?B?cHBRTXROTEhFS3lldlpwUkYwbUU3eE8yUDlST2Fod3dqZlZqbkdES3NZQ242?=
 =?utf-8?B?YVpZT3VKcEtHbjdZdEdJSEI2QkNFTFNERUtlMDRNeHdzUk9wSU1adS9odER0?=
 =?utf-8?B?dVhSM1pERDNGdVFyUlFFYytYWFozVE5LZGhZVk5FOEVMM3RaeGNWTDVOMEti?=
 =?utf-8?B?Q1BzOXJEVVVkZ0V5MlpvOEw1V2V4K3RVRlprWHlJRUxERDB3V0ZuemF1Y1dV?=
 =?utf-8?B?WU5tdmtKSHQ3ODNZNWhIcGhNQWdXK1JNZHhmcGpkRmFYcytRakxnQi9TWjFF?=
 =?utf-8?B?N2VzSG5kQWNvcFVUTzdGTno1QU4vTlYwSHZkcythY0ZMRitzd1JiblNuVjlD?=
 =?utf-8?B?MUdLZGFsaWFrZktuNEN6MjRvdVFHdUErNllrbytWeGMxS2JuVlRXenFtd282?=
 =?utf-8?B?dkpuM1c5M2czUWZpNTIwQ0ZiZzVqMXhBQndENGlOZzQ2SzhBSXFnOEdlRXQ1?=
 =?utf-8?B?UWlObjNKeE14WWJZWThMTlNQbElUMVJKbUpSL0VhV0lLZkorQ1A3K20wdDRB?=
 =?utf-8?B?eE05WlFGTkIzYmtJZncyN0JIVFhrblFYS2p6cFR2T3NGS3JPYjlIeEZtSEtF?=
 =?utf-8?B?M3B1bFpBWVlENXZqd1k0ZDI3d3BHVHhCV3FnK1R6U3ZURjlGaGU5YnV0em9l?=
 =?utf-8?B?YnV6YUFjSW0wd05yV0RpaVR6RGxFd3FEVU1NVnM0ZVVHTFFaQ3hLbmF1dXhG?=
 =?utf-8?B?NXA0S3crSERwYUN4eVdmRjcvM3gzbzhNRXFadzlOUmppUHFVaFU2aWM4YWlX?=
 =?utf-8?B?M2FSNXd5RVZyYlVMMVV5SFBZT3NYaGJZWU84aENXcXdiNnNpTHhIVFppV2Yy?=
 =?utf-8?B?ak02SzZXdlhNYXBYNmQ0d3AyY29BS2Y4cEp0ZjB0aUhFZTFZTUFGU1NqYlNz?=
 =?utf-8?B?bzRVZEpmZzdCTXpkUWNWSDMyVTF5RUdIUm4wdlpCOVdUSFFvYXQ4d2wrWkU5?=
 =?utf-8?B?WVZ0SXl3bjhRVjhQQ29JYmZDOG1FK0tkZmJWdHdjTWlMN2FQSkdZYjc1NzZG?=
 =?utf-8?B?LzBJWENYQWlQTzVETHRFdGVoNXNJMU5kZXBFQ1RqUndVbE9ZNld5cERWSHFY?=
 =?utf-8?B?cWRTSnRnTkpoVFVIdjlabWJ0ekJtK0tjaVJKeGhwbExIdXVhamlYZ1RIendB?=
 =?utf-8?B?VC9IV3dsS2taMXpUVDhCelpDdHNiUzBzZGRFUkUzcG5RRGRIUDNnWWF6M3JO?=
 =?utf-8?B?ancvY1JWV1oxVThFNndwaU9zajVTTm0zQ1ZFWnNXa0tiMFk1cm5jRVhtTC9D?=
 =?utf-8?B?dWFaQTVDOExkaXZudVphcTRxdXhaRTljOG5QRk1PK0JZK2J0UlhrSDBCanlB?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: omleud0zxK+cU2neXD18b/rNXBpWRUp2YNs8DeAStD6+UuFLv2pN7cXVwqq3MAQOEa8gKZDH6eafzcOnG0/J2T4ptgV7MyoDoQMdvL6OaqyXesRxX6NPiuGsmrzMUKOco9XlBads4vwDtoatt0kRHWn6fv88x0HUzoyrbX/qF8kdwbSCz8vJGb4nSzKBzbUSSZbxMQ6ahSwTAqD3ihDr7eJ21GpXn6cPbYnfNYhGApj2i0EcoW5rI5OVVgmcr7Q3xvq2ooqxt+wU1hLlf6yHAdZPwShBsQPviMgjdIryZnxeund8tfTkAiosob7e2y8gcQZUzxbkyYajAJ0P8Kah95WKd9Ps15htjwPjH9AiJUKjrfy6SLL7Pv2aIXvZIzx0R+tfIh8rqaACD0lmmpZcqZDa83UMEJ2nifoBh+6UnWST3+IopkX6oK4lPBNyiJFG8QBuH9A+qxzIOZwAnZkP4j7NgASRv0zQw2EvCihnZiBuiB3sZztzaEluMo5tkn6N7fcoBsjwTaedt5HiG1cbrgBDrBWhn5dD6tQ6OVuoFmroLx9T7LU27GGrgZlrm48x0il0GDOo+s1/Md9znUj4Oo0Cgp/QjK3I+fKm9sS3Wghb0NWm/TEn7FchTEb8C8NA13ArQ8eD0kkqFZqxXc6/13sFWAjVm02ajxdrr3TVW3vsh+3mAKtXRIXMeAYN/z4A5nYQEOvuoEzesgVk6uBEfHPVIMWuDrjDFw2hJy6F65HK4qbmRGzCjfNl98P+Fvj2SmBQqAw5RLMPeFeYkAXaH6ZMJZC0ZCqLeC4sy+OjekvstBjMQvPxuhDhBK6R/onY1EBKM9mZ3gkG/cB8JVPIvD/9QaVf7exLBxOvpZYIWDA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b73cd39-7157-4549-49ee-08db518e74bc
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2023 19:40:49.1890
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PGw3tvUz0B16CeHE7C7XT8DpAzZM4p6s/1/xLUPbwejBwljXS5yU6TYE1rtVaHsELPMbYfgI0BO3DT0r+kPoc+Fk++EJoJOz3DgwlkwcEHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7286
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100159
X-Proofpoint-GUID: otr9PotGYNWyXMlpBHT37S2uCyGf5Je7
X-Proofpoint-ORIG-GUID: otr9PotGYNWyXMlpBHT37S2uCyGf5Je7
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=B8+gUw0+;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=OTdO0IkD;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 5/6/23 4:29 PM, Chris Leech wrote:
> @@ -656,6 +646,8 @@ iscsi_iser_session_create(struct iscsi_endpoint *ep,
>  		if (!(ib_dev->attrs.kernel_cap_flags & IBK_SG_GAPS_REG))
>  			shost->virt_boundary_mask = SZ_4K - 1;
>  
> +		iscsi_host_set_netns(shost, ep->netns);
> +
>  		if (iscsi_host_add(shost, ib_dev->dev.parent)) {
>  			mutex_unlock(&iser_conn->state_mutex);
>  			goto free_host;
> @@ -663,6 +655,7 @@ iscsi_iser_session_create(struct iscsi_endpoint *ep,
>  		mutex_unlock(&iser_conn->state_mutex);
>  	} else {
>  		shost->can_queue = min_t(u16, cmds_max, ISER_DEF_XMIT_CMDS_MAX);
> +		iscsi_host_set_netns(shost, net);

Just a nit, but use a consistent coding style. Do you like newlines before/after
like above or not like here.

>  		if (iscsi_host_add(shost, NULL))
>  			goto free_host;
>  	}
> @@ -694,6 +687,34 @@ iscsi_iser_session_create(struct iscsi_endpoint *ep,
>  	return NULL;
>  }
>  
> +/**
> + * iscsi_iser_session_create() - create an iscsi-iser session
> + * @ep:             iscsi end-point handle
> + * @cmds_max:       maximum commands in this session
> + * @qdepth:         session command queue depth
> + * @initial_cmdsn:  initiator command sequnce number
> + *
> + * Allocates and adds a scsi host, expose DIF support if
> + * exists, and sets up an iscsi session.

Maybe you want these comments for __iscsi_iser_session_create so you can
describe the ep vs a net args. Or it's just odd to have it for only the
ep function.


> @@ -3106,14 +3128,21 @@ static int
>  iscsi_if_create_session(struct iscsi_internal *priv, struct iscsi_endpoint *ep,
>  			struct iscsi_uevent *ev, pid_t pid,
>  			uint32_t initial_cmdsn,	uint16_t cmds_max,
> -			uint16_t queue_depth)
> +			uint16_t queue_depth, struct net *net)
>  {
>  	struct iscsi_transport *transport = priv->iscsi_transport;
>  	struct iscsi_cls_session *session;
>  	struct Scsi_Host *shost;
>  
> -	session = transport->create_session(ep, cmds_max, queue_depth,
> -					    initial_cmdsn);
> +	if (ep) {
> +		session = transport->create_session(ep, cmds_max, queue_depth,
> +						    initial_cmdsn);
> +	} else {
> +		session = transport->create_session_net(net, cmds_max,
> +							queue_depth,
> +							initial_cmdsn);
> +	}


No {}s are neede here and above. It will also match the other code you
adding.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/29152592-ac41-546d-aeb6-867c6de2c860%40oracle.com.
