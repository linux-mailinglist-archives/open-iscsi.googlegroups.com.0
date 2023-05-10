Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBGHN56RAMGQEDWJ2DNA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FA56FE4A4
	for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 21:55:07 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id 98e67ed59e1d1-25014b171a4sf7373963a91.1
        for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 12:55:07 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1683748506; cv=pass;
        d=google.com; s=arc-20160816;
        b=n3vNE5XWQ7BQKtHzz4ibE2pd1k5Rwcuwfyz+edZAmxICxSuUPLcoR1+wQqkv48ey4T
         MOUeUNIWWEtfvVSMbLLQ5SvT3U7fg9WD9D4VjofjJezxRaIbWkWKmaY+ZlWaUEGogHfq
         BZ2xkaEABbEONlX6+xbEIELgqQV/UHs9myXrKe+bWjR2vocYi8CoTe0t3SAoi+lIS8wB
         z4G7gKIBCpfe30c2hwjFQ/H5ut2TF1HqoK771TsgA/OIOyjX9RWvKIWbqkWViogc0SUq
         nXRiJHejBvbXQxkZOqVMO4BHm1j+dO3PQMc8BJHmabrTYX8xv3ITfBqwIthiJ4CQuRz1
         59+w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=ccQTdAvBZjDaTsdymMBb5oi33yYLkkRrEHAqdYAymso=;
        b=VmO8FEqMu5vk8OkiVCbStvnlqyp8dnJYKGaxf7lOchGvuhHcedIC8LzA3OPsCF//Q9
         vLuULbezwHHOlqFLF44zRyhrUpKYBVJ0xQ7YU2RW/xzoov/EAv4KFzBtFgsS/N3R+dSg
         hid1czKquXW0H6+YKeBR3CwBCCdPdsitdB/Paz8xQ+4wNdcRcuj+rQLWLG8A0NnyBh42
         36WmiZszNpYv08WyjhrEE5ij7nppCgjVpcBk9mCceN2o/AxZRL4PK2xecodJ3WaJVpFm
         NcSWkkKIP14Ae5tmeSfb7WQSrH8mORdLhffr58trXFXwaGZ9KREehmiZ+dqrVT93ZhHr
         YfCQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=McfUCl4g;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=hAzqpodI;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683748506; x=1686340506;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ccQTdAvBZjDaTsdymMBb5oi33yYLkkRrEHAqdYAymso=;
        b=p1czrwda1q7DycUGfDr0wkiyf74eKyYec/pjZiI7KeZDYvxwrZIpGAHIlGNerRxdmE
         gYoz2LWZAwSH8j/w1rHVg8EpMyLyK89ysnGdLjTa0tF+yT4Hi/FNuyKYfupbi0WXTDpp
         uX203lqumW7chG+zF8wC9NXwrzpcvBp0unWJU6qzO8ceVPtGo2Xyr8n3gEnbLi2scxHv
         ydZY/MQn+9wlTFUAGVeOQvq/W+L9gJEfJ3zZP781OZv3YDVtt8RvGr7e6skj02TExVIg
         Xo23E3fBZq08OCpmId0H/TVLajEU+jxXzExwKeCObFLbr/9ryNOQ6y8u2nTFIpyd815u
         NdpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683748506; x=1686340506;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ccQTdAvBZjDaTsdymMBb5oi33yYLkkRrEHAqdYAymso=;
        b=PR/c2s6YuD5hNMJWkvDCERiMwOB4LYZ0pwop7baZFSRBpoILeYNFW5wGEOA9Ci+5BK
         rTc3s9SykoL2zOappi1Vz6AzhggAwvr6oyEJ/k/eJ0ZInpxoeWxY6qt3lttASM/JEWGZ
         vghXzo7F/F8rwr/temYaYHOHBuUFleV78E4T7Kjhc+1XiRWBi4S58tcnuVTq6pnEP3zC
         yVNvXFToOUGen4/liz2MjFLoi/vSfcymTZCLW02TeuYYQdm/hb36H3F0b/l3i5XJaUlC
         aiCultfiC1QD74n7cbpRc3wozIxFZ0piXD7iyZzDOjhaUYxjIUEo6ubuyCztmjo5zKaB
         rleQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDxHv+B0DFTX/Lreaubj7yit5RV1c/8UVFK4JaC2HjrppNWMOxhf
	mbynKTBzoZzvHiqDHa9Wb4w=
X-Google-Smtp-Source: ACHHUZ6V0Gbqacp4lzsqsc49ZMGfQIqd+U+8bBq1iCI11Tjxx5e04xfu5WEiz61BXns7Z3hWY2YA5A==
X-Received: by 2002:a17:90b:915:b0:24d:e504:69ed with SMTP id bo21-20020a17090b091500b0024de50469edmr5823302pjb.3.1683748506353;
        Wed, 10 May 2023 12:55:06 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:ce02:0:b0:643:9718:78dd with SMTP id y2-20020a62ce02000000b00643971878ddls2365247pfg.1.-pod-prod-04-us;
 Wed, 10 May 2023 12:55:04 -0700 (PDT)
X-Received: by 2002:a17:903:44c:b0:1ab:27e7:ad76 with SMTP id iw12-20020a170903044c00b001ab27e7ad76mr18046092plb.45.1683748504175;
        Wed, 10 May 2023 12:55:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683748504; cv=pass;
        d=google.com; s=arc-20160816;
        b=bJ/VdMznyZ333JgOxDogaRWIGCQkaqR8OzD0pnNs6WnMDtHlLgyyuBQYCo452+QYle
         yVGXu3J5mBLeXLkHQVA8qqfEd8/KfmSAkJSOC4xDqQlyepYLrhT+Hl9VjGfeTZMEvu4f
         nRuCvBuwwr4qqcLVc3vbKLW5yIk34plROoLjB0F0JEsCBo24ADLGRBpg6jN51DoIWWu8
         ILnktHRiDwk38KeSsrgLpbossJr5mz2FztRZvvmFHtpZ/l6CD7Q/+B3ATjApeKKW3Q/e
         cyjX8aG+KT4bRRGC+8CVNcE4uwNMMKadmXER+A+9oU07mPpCJWwgMtBFPJPucs0F7Gqx
         BNcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=CprJ9e+8SKRSo56Po50FxXRIttr+5eF3ocVn+6+0StI=;
        b=DE1sJ3A2loQrxSTTvZsYLnFa5g9zzLRtOzei9x1h/qm1Tf2jPbGo9mYlhaWrj8/tYq
         2tF9v1oewZpWrOu0pCVaYAMyDq0/fWwf1tq1fV+xCtIez1cgq1aA90kDNBNSG0x8atnd
         70uh3AvROZxDPX0/YvMRZowc47PR7y63k83+k5gMlQwgreuc+YNl42gWR5gEyjVH+7lL
         KFvln1soqFNydKf+fxX/MuKYBKC/sCFk5VrKnb2sOgOtVwHufHGJ9ri3UGOOiglU35sv
         /okdP1izgZjTMcTrtsjcW9+ftcA5bUcuV50p+ZAD87HKXms4msQVzIjToh2QW3L1Bv9w
         /P+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=McfUCl4g;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=hAzqpodI;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id kl8-20020a170903074800b0018712ccd6e0si218757plb.2.2023.05.10.12.55.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 May 2023 12:55:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34ADwplk011226;
	Wed, 10 May 2023 19:55:03 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3qf776nd42-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:55:03 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 34AIT3L6014330;
	Wed, 10 May 2023 19:55:02 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2173.outbound.protection.outlook.com [104.47.56.173])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3qf82xfbhw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:55:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SEMLcBFb2KugvTWEzWPQbE9zZOJIf5MRQQ6phMxFmrHqaeaN0TBCNzGmus0ghrRM5fykEpg5NGPVjnXFL42m3zrP0YAglMkfUex0P5sJwWkOWKws0LJwR7UaE2qOSnq6oeiSGnTIgtbWUKkITSWfxlXQCIuSaq9lftfUhdUAtv7uNr8gxZjfVNaVzaefr1Y+O3lg4Kr7cMyqBZcW35HO5RA1XkFmIS3JyN6YShakRijt1PcIwbS/L7cQ3RTOh+3loPRBBu3YEFhDRwxZ8R2AZVZ5926QOi+RSRmwjYpAzyPgefmTWGB/qQZxf5EKSIlDxo4rSq5si3Gj2jEFlPO8ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CprJ9e+8SKRSo56Po50FxXRIttr+5eF3ocVn+6+0StI=;
 b=mr1bWlOUpgYf+40pvU/B8Yrh3m+nXrZsRAlMtFpesSxKIgipcN/rnI5XcN1FVyN15zvMLZQXZIOLf6Eg7a3gkOcIk26bGLtzVHbncwZ0lCN8KViTsSAlOVahlTHSfna3JPPNbfuwRwtX+GxuS3kgMcReQMhqoQOvG+7pOeClYtLinWg+dT2a7L8+G+cvGNGsm05lxv5Xu/fBbmdgd43vZVGy/m+q/sBbqh+HA1cTUTBTScyejrWzne0tUSMhEFUHYzs61XuRLeO9uYo1B1O+HdYFofTSFeEwVi+CNZNLpHzE3X+SoOcj+T+XMMqG9tAcX/pzZBQhccJDD4PAnB08Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 IA1PR10MB6051.namprd10.prod.outlook.com (2603:10b6:208:388::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Wed, 10 May
 2023 19:55:00 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef%12]) with mapi id 15.20.6387.020; Wed, 10 May
 2023 19:54:59 +0000
Message-ID: <02b582ed-8450-4352-d1b5-a68cde26ba80@oracle.com>
Date: Wed, 10 May 2023 12:54:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.1
Subject: Re: [PATCH v2 00/11] Make iscsid-kernel communications
 namespace-aware
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        netdev@vger.kernel.org
References: <20230506232930.195451-1-cleech@redhat.com>
From: michael.christie@oracle.com
In-Reply-To: <20230506232930.195451-1-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MW4PR04CA0298.namprd04.prod.outlook.com
 (2603:10b6:303:89::33) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|IA1PR10MB6051:EE_
X-MS-Office365-Filtering-Correlation-Id: cf889d9e-0019-40b1-8d9c-08db51906fb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7ZUuQgoaPTMFPqnNcmWgA8MEFWa7IpLbRrrVC3xIItn0ph976we+DfF2zfAEqbkU3XOvd+wgUWVsUT0jugnoda3roCB9656cb6PegloXFwHyvqy5SbBBpfrCMnc/WBUaMqY+dCz4FNo9F/MGTC+3ehPwVTCUtrD7eANsJZ17JY/0Ac8EmO8MyeApoZmLhbuU/NvS8onoLIW4UY3Us6n5T5FfbzeIgB2WVJTVVgqfn+7IrWtF80W1Z1e4vR7D/RE0iGYCu+3HYVNwh4jw85huqwvdkEcJAlFWDp/vL7/Uuuw7uaBTBfDjeldYUt9Z/pBWqfBZywuNc+YtaiEPrfPyYMjOVmJSZBVte592ZS8xjeNseIciFHvqmKf6Q6WYEwBkoZp1M/VGVx1XDqGuaG5DtX+Y0naPMHMd+YLydkOMzwKt+cFKW6UKxlR6wYtupJ+CVqTw1bwnV9NMMlFbqJeureG2Z/cW4j43M7OIDnGyR24boUNawBOoSrplZj14U4YzxeKFEjw0aR/auNowyDndo1d0xTyO83TG1JbpkkZYCvft/jdNq5+X11RpVyoBesLU46PqyMtfpiQAr+Wii20wJQ2MzpGvVZtMyXXnzO7tsXpIA31MobNUF9hbD2cQfTPg
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(376002)(136003)(39860400002)(346002)(366004)(451199021)(31686004)(6666004)(66556008)(6486002)(110136005)(558084003)(38100700002)(66946007)(2616005)(66476007)(316002)(31696002)(41300700001)(86362001)(8676002)(8936002)(6506007)(478600001)(53546011)(26005)(5660300002)(9686003)(6512007)(2906002)(36756003)(186003)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTJ3ZGIwSStLdEdFUVhJM0xvSHB5c0xReW9VVVJXdTFoTC9CNFBRWHRQeFcx?=
 =?utf-8?B?ek9BMnpPcVI0K1pDSjNYKzM4UW1ma0hGQUt5ZUdEYk5mR3FJT1EzRWl3RkNS?=
 =?utf-8?B?c3kwdm83VnlPYTJaQ1hPOWdtRHdDdWRpMnVmU2JCRW1CTDBiMWl1Vjh2d01W?=
 =?utf-8?B?TE8yRE9oNU91ZEdtZnJ5UW1PWVRRbWNGTUFSM04zaGpnTXZZV3hDTVpoQjdQ?=
 =?utf-8?B?NzRrcnRUUjRDWlljSjA1TFQ2ZE81c0dtZ0liSzd1a1llVk5Hc1ZrajlCbVho?=
 =?utf-8?B?dk84REJGSUVFc1JyRGY2SGl0Sk9wUE1qWGtVSXE0TWI0OFpxcFJnQWc2dVhX?=
 =?utf-8?B?RUliV3F1cWJEaGl1d0NSVFBGeUtjYkhvOUpHMjFBOGMrZmNnbmlkWEFLd0E1?=
 =?utf-8?B?RGZUMUo3ZVI1TmFiSFF5Nm8zZFZhbnFjakdVRi8rUFZwR3dGQ3Fwa0oyQXpY?=
 =?utf-8?B?V0xoRGd3eUlEOGJ5QkRxWStWMlBwNE9BWkZZM0Z6TVNMdzlMeWljSzNkY0Vo?=
 =?utf-8?B?a1pFY1BtQmoyY0NxczU1ME45UEFyWUcvaTJYS1o4a21CeDhtR2pLNXRFT0ts?=
 =?utf-8?B?cDk1b0ZVZG11QWcvTHRJQUhNRHowU3RuSzNYNVg3VEJOWEJxRDdRWURMS1p1?=
 =?utf-8?B?QitNZHJxUUdmZVVOM3lQTmFXNUNJdGhPcStCOXJ1MXViQnE0U3dWR2xIdmNK?=
 =?utf-8?B?SmpmRjBaQWZRNnNkVnlWeFdxdTBXNHVYejJ1WjBiajg1bVNENEZxVnlrdVN1?=
 =?utf-8?B?dFptaU0wUnI2NHFFWFFCcW5QdUNNVy9FZWRXM2Rva2hPVzNHeWIzNVdHTGhy?=
 =?utf-8?B?Z1l6THM5T3I5Sk5wSWtoOWh3QzJSTnBPWHU1NE5UR3hXV25WaDJtME8wRDBJ?=
 =?utf-8?B?NmZTMi9EVFhzY1NhZkEvMFFnVi9DS2JOSXk5WTZOY3VRSGFyVU1nRjlsdmw5?=
 =?utf-8?B?UjF3eGJUc1NLcTFIaHhjbnQ2bFZ6SVI1bmM1VWJNZm9RUmxmSU1NTlZrNkRH?=
 =?utf-8?B?bDhRbGxVZlFWclhsdnJXS0V3Z20wbTdzak03YjRvU0xEWHNPUWc3Ykl3ZGJl?=
 =?utf-8?B?ZUNWWmsrTjh0TG9tM1RLNGhXYld2OEluNHU5U2xPcEl6QkNGQ3IzY0FvWGRM?=
 =?utf-8?B?Q25UamcwSW1KaDhwZ2VkaXhVMmFUa29aanRENWFGS2FxdVB0LzMvYjJLOHVu?=
 =?utf-8?B?V1pmUzUvd1p0QVMvUTMzQW1hWUM4TkJsNUNOTUlKTlhrZGpXS3NVT212L1U5?=
 =?utf-8?B?QWpucHljeGhvd2Q2blBJVW1xOVpYdlZIdEczTldFbWdVb0g5YnQxQTg4Q0JI?=
 =?utf-8?B?bElZUlVUK2NDeVN4dTViT1ArWnFmZGFQRk9EWHJDRVRrWE8rOUhLSjFISi9o?=
 =?utf-8?B?eGVaNm9WSGxtZ0xoVkU4eThicnZVQ0l4Z0MrTkloTWtPL1dLN1RON0V4Vk15?=
 =?utf-8?B?c1BiaWZXM2IvNGNKaGNGQmN2Q1ExbWdEbVJnTm1DZjFLcVZ1a3JqeWtWbWJI?=
 =?utf-8?B?QmRURVp1ejlvVlhMZGpoTTlsYXdJTWpYaFhRY20wTitia2lsclpvRGcrQ1Bp?=
 =?utf-8?B?eGJZS0dmUEEwazdGcUdlZnBCSmMwUjdzMUJsSEpGSXF5anRZTnRjUGdIUkNS?=
 =?utf-8?B?dlYzME5DTk5JMUZBUWZMcitvT1hseWw4MU4ybmhTc1BnRmE0QXFqVGR1MEhw?=
 =?utf-8?B?WGdsaU91cm9qT0VFWm1NcVVMaXpXZ1J3emxOZXd5VmhEcjUxeVN4RTV4MVJE?=
 =?utf-8?B?MzJzZklxcVk3eGpkYkhjMHpORkRzRjBJYkRPVDBycVM1elpQdXdscnpud0pC?=
 =?utf-8?B?SjlSMHdwdFd1dlF1dmw2QTExaXdYQXpoTkx3cW9JakFBNmFnRnhBekVWb3hz?=
 =?utf-8?B?aFdqRDc4dlQ2Mk81MUxhMzA5OU5ud1B0M0srLzcrUE56OWFCYzUwd1pRK2xy?=
 =?utf-8?B?MWZWcGV1SVR3MEl2ZE4zWTJoTTZ6SmpQYkdLOGVpR1Zoem9CR3NSdUppVU1r?=
 =?utf-8?B?SEhkenREeGRnMjFHdm15OVlaL3ZWODdDbWhVOTZaRGdnUXZNMHg0eGJXeTBX?=
 =?utf-8?B?eTdUNDhVeDRiTEY3RXRUSks3TW5NWFdVenFpU2lxNmdhZGtwMDF5K3NwenpY?=
 =?utf-8?B?VklpRUxYNWRvc0Y0cHlQTEtCQ0xzaThrWG1jSUw1K3lUOXlCWDNTVVdjcWhk?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: zty3/kq/O8wYtuFjbY/k6pBfARcTSO1oJ6sVNZqgb4jso6fNjtgvCs5QZfchZjDa8NnHsNCzGJnzgF2VQlGHDMiYvRH69MbnP2uUY+urUotWFhJ1PuOmMtxV8y9FcF9Sopp0fnpWrogVmXwDhOxJ1Sk+FgtkhtdHcwW/jBZdBKgp4BhkeI/YA7vi77Sr6j/eUvQR+e5CbgGmPahHO3mKgav3tLZCcs2FtlwS+G+b5OPiuJ5ujlgofUH3mfAptn/PDQcgPKhXq0U2kyFjLIQ51nCwOz2gwXqGchJlduavQhhsCCq91uW/b5t3/TKuCzdYsewEyanifaSAL8/V4qh40EG3WP1jObJ1ZzQOozspN9hIXouHja+xD4b/khsiD67G1JXeAosjmuH/AXW4DWtVU6niu9y53jXmwtlFVoZnLjVAU+l8IDmPg5s9ZhDEl/IvbVGKXzz6ZtftQtV1YOUezl5yqr9wyfF7YKwOf7yMxujVYPTf/Pb3qXcFawjaIrXTC/8BBXitm+tCluPdeDbnicYcZfSQx+WQJzmvUkyLT9hbZ26siXmSIs6ZXHmjwFQrqV0tBpGpAwWCCi71/egpuiEiNWOUz3oYFkUazqg6XUhTNJNaW5K4ZKHWNBYWJJFQjhXfaxysOsmd2VkV7WhioafXObEOwepscAKTC5tl6AvRgsGr0zqRviNKBpJM+F5D/SZZlcsU+6UJKvYzJHaAu/ZTBCOIWesxirjhvw178cm35iMKzXmKQVc0eqbK6JXjDMy+wZczWop1TosOMrPbmde0upnRs4FL2kIXtotXPOp5+0XXaxDPp6beenlPnJ07SewWXy3Qhq1te6d64A9q4zC4AteM4vRx/3JtyGzeZ0U=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf889d9e-0019-40b1-8d9c-08db51906fb9
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2023 19:54:59.7742
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f8IoKfbWLiNSAPga0RDcbBfF3e8BUYXhb1AroriACJAitf8vTt/4c0582ykqNWhe6jk3L6WJB7fXELky1DOcYFi35xtoc/c/3zUu82RHX/A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6051
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100161
X-Proofpoint-ORIG-GUID: fgDrr0XnVqhygpPESOQmz-RlR5vPnHEM
X-Proofpoint-GUID: fgDrr0XnVqhygpPESOQmz-RlR5vPnHEM
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=McfUCl4g;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=hAzqpodI;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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
> Note that with iscsi_tcp, the connected socket will keep the network
> namespace alive after container exit. The namespace will exit once the

What happens for iser? Is it the same?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/02b582ed-8450-4352-d1b5-a68cde26ba80%40oracle.com.
