Return-Path: <open-iscsi+bncBD54HHNYIIIJD5WVUUDBUBED6U7Q2@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDEB756AA1
	for <lists+open-iscsi@lfdr.de>; Mon, 17 Jul 2023 19:32:08 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id 38308e7fff4ca-2b6ad88815esf40985651fa.3
        for <lists+open-iscsi@lfdr.de>; Mon, 17 Jul 2023 10:32:08 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1689615128; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gc819QQ/LFV4wKUn+jYjNESUgm5e83T0V4wMj6sEVIyzCPQwQs/FzoiHP67zm1xV+D
         YBKYnsfrn0YsW4c/yDQiCHPwpLp6cX7aQJW39t5s2NJOHA8X5wgFsBFZnYdjH93UGTL3
         oLkcXbifQyaNskm2JU58rjU7UYvwjCbnqS0w7DpKU6Pzm/sNLIQezDqDGB0BIj2d5/8X
         ktRQC4EeHvTEQJNcMuUV0tGC+y09E0RKjXcW2Zi5abB0mD0xqombwZ/6G8p366HGE5uS
         O05Niuphrni1gnRrNy+gMBD7ILD5rV6und3lZh95jYdUXKzw2gpudNNe8KNz+x1g3g8W
         nnNw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:dkim-signature;
        bh=9gZJcASe5umdIPv6aZTfqgVeOKzRqE0iv04Lp25rT5g=;
        fh=g52F8XLM1PxAFKNkLE5HlxkDOSBf4+FM9fNDbBYwinQ=;
        b=tleQZ0AAa9vBT2VA0hFN8lkURv29I30zehop4II1EIMFVkmQdp66Qujg5vHBtn8fYY
         LqfcSjvW56cqJ6BYNCCHfGuO1MzeUqeD94vOFerxKV0MpCr2Ov/7OA/GsQIJPSOYbqgn
         +hikzF6a2f5CqfB7An+HdLXALm0TYNuJfZwgEDvZfnK134nGICjwPCeyK7ZaXiK8JBBO
         hnN8vbEL5uVd1G2xPM2KJ26QRZcdTlHQSISCa1j8CylCgMIbuVuEmMe6s03GIQ6dnQi7
         w4zcSQyIdZ//l0RdytfkaFA1R3/VFBUZjcgCx72/wq99Oi+GXvlZoPvCGQRxnIyyZYBT
         ylog==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=IU61qMwG;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:fe16::619 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689615128; x=1692207128;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9gZJcASe5umdIPv6aZTfqgVeOKzRqE0iv04Lp25rT5g=;
        b=P0qu4cnkrgryi+ykI8IZG19H5s0Xw+ZQvpG5yeLEwGpl3oelamfnPnGr9hVMbVSDWJ
         d7wCMpbcXaXCffa/tx977Wh4yFf47cJWQtvAASi4DKVwGtx4YNA+EOsdvG6Jz5mTaQhR
         bYUIh/pG48VesuW0TnWv3WwJeUvz2ypvJh/FJvi3J5qVFkNV3drXMcbhVBbvFvvrcVB+
         K/ep0Q0DJdPHu8Xa6uR6om3sMYTtre7vecZpQjs3OKIfQ5WHjQ3PDgmyD/WRITsnVAmu
         yamCCaRjSAIWPiYW1UN5+31AWhUwMEhnPwRpq+xO+vMG20ODemzHY8Ow/mbOnLmjwsyZ
         yf2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689615128; x=1692207128;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9gZJcASe5umdIPv6aZTfqgVeOKzRqE0iv04Lp25rT5g=;
        b=ZT1/Go8zl2AmokrHZmXUlgZgNEnZOD377awIQzqcdiYkFuTGgH7gBakhMIRhmxs3id
         RLxC/Jg5J9jFSHgbAmCBySwSdkzVvhP5F47mkpFBc0up4TPXZkfpioan93+aWbxdbsWO
         5zjUImtaTUbhdGFROynKiu0rhRuOT/EdFew5OvtAn6rvXRQkB0eihIn6pfNDPTPh2QEY
         UHZFuKVQLDSi+wH5Fci2PDABwy/gpKdcPY1NilwbtChku5C/CXSycINaTjbEb9yhPWSa
         E332c2WmdS3ZhPmlxpo3zwON21vNZwUDTadrpZ+1jydx1w1a+krxgnE6Q1hzzFEsS5w8
         gRlQ==
X-Gm-Message-State: ABy/qLavpdcPJNIHAObAKzXE3AAyMQCidLoz1MrPYgyGQGufz160rwqY
	BrHm4n30ebFMPP5QbCmZSaE=
X-Google-Smtp-Source: APBJJlHyEXfNgWmwkMhdMLT7jr+T2ZVqymlqOAoSFtB8AxWHF7RU+mK37bWLX55SXeIi3r1GBfnO8Q==
X-Received: by 2002:a2e:a0d6:0:b0:2b6:e9e1:f62f with SMTP id f22-20020a2ea0d6000000b002b6e9e1f62fmr9392892ljm.5.1689615127267;
        Mon, 17 Jul 2023 10:32:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:bc02:0:b0:2b6:ae7a:d447 with SMTP id b2-20020a2ebc02000000b002b6ae7ad447ls134277ljf.2.-pod-prod-02-eu;
 Mon, 17 Jul 2023 10:32:00 -0700 (PDT)
X-Received: by 2002:ac2:5f09:0:b0:4fb:c740:326 with SMTP id 9-20020ac25f09000000b004fbc7400326mr7398654lfq.55.1689615119971;
        Mon, 17 Jul 2023 10:31:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1689615119; cv=pass;
        d=google.com; s=arc-20160816;
        b=r68XvOVi+BeXf/kjzkJjmP/UPYsA2l4K8RfBashvR1LsuOksB4gKwBu6kcqdakOEDu
         wLr0VAg3IGzgOx9QY/CSDGDpS+O2sNdaUsg7daxW4/zMVmDVHAbsmRbu6b3WbJBIrcvE
         aL8mjiR9khFcSIoGTc/rE4FBsMUZDsHITLjnnpVv1MO5z8iUuTnu321q4jinusmhoBmp
         OE+SZw+rLGxG4RRk8YuCX3VXvYaHEGhsJOxiR0+j6XJThlG4IXGYLOplugEc4CNIo8Yb
         53xtJhu0agczA4MRh/9WXCNj1gHEuO06zNV3iczcwb1kzTXleR599jZpLK4o8cGO4GXU
         WBnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=Pn7yuhtjLzYa1zDLRLIshNwTkj6xp5R0LDYkfFYpI0s=;
        fh=WQ1ax3HoXlp7UAOQTt2KW7cjCSsIcnaILQE1YmMTXbM=;
        b=gZBOfKUsCzPoe5RJYF5tyaRWFYeV/xjTwkEd15C4f6dnew446DuVMGrGhuCUjQcDWP
         28B/KDJs0BsCNAu3b3Srl8aYe3beP+x14xZ0Ay78DyYrxKqumIX3LuDLFlC6hLNuBrTJ
         HnJwUe4ddXDNwC7syl78AEwWQ5ou6Vt57CIgH9jdNOVmBYFgiUxNUr+gtYCZCs5W5hWb
         WNyCg+WU0qz3TsVlitluLvxTWnpbeNj1jV5DJX9FaS0fYZ3SwphZRLU41IrUhBxLnvEv
         0kAL3PLSX/CrVmG2nBiYU1BCKBS/GXpxUycsk5fosfuYytT5E15d9mU0ob5BSnWy6c2H
         sAnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=IU61qMwG;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:fe16::619 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on20619.outbound.protection.outlook.com. [2a01:111:f400:fe16::619])
        by gmr-mx.google.com with ESMTPS id be11-20020a056512250b00b004fbdf1f6dcasi5812lfb.4.2023.07.17.10.31.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jul 2023 10:31:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:fe16::619 as permitted sender) client-ip=2a01:111:f400:fe16::619;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gmJfR3T7ec56i+afW37dSxUj4Z6UA3HcIxko03wC5gLw9nHMXG7D1O9L+C3n4KpiwOiOz0BzzqcB2i9brF5UjnxwYKNZFVNDmiNhKLY3jb2J70f+bxrpcY1undWZAEJmtH5LIkmZ/PNq6kAU5Zfam1B2Y92BqLTaV6b6m29onU7kFzOxfPqfcYQthdsPZa0VRztKYEjHxrMQw2/uNCHPi8NMF5ZUg1aLDsXecWJziBSS0bGsPJ59ctcpcn2/iZs4EFUp+294e/jEe4/LjhTKvfnLAWOcHjufNZS7eNq+AfVV2cq9YiNeyFosjvk67glsqjipGUeHdXN1AgmrtYlUuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pn7yuhtjLzYa1zDLRLIshNwTkj6xp5R0LDYkfFYpI0s=;
 b=KtbxUCrQBuQDMQVGrG7uK8Tr6DfFNK0BjOiO7u4isT6+7JWZfFG7VnU7Mk5fHw/T9tW6zMXOkUHQjOPAb+co8xr0M0x7qjdJv4EMQ1xzcflm1XNGd/9r9SQBht4uYQX9Xnu4bNaUUioW/QzaSER+8dlLTS/h5+2lUxrvbXofgjvWEnGMKAoqBNqVlqDKZpg9FnxoXN3KwHeuBwV+HxcHl5JQJSIvTa8CUsPbCkMRvBBhZZN7as6Es3ml7S3y1kUTxGqKGXbfzTBQqcUAoqGMxXUSM4ExoUlUvoJ3NXPeyr2n2dFsJTCf50DwPO8mvvC1qSTskZJWAYBZNUivvpF3Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by DB9PR04MB9817.eurprd04.prod.outlook.com (2603:10a6:10:4f0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 17:31:57 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::f717:71b:d561:3313]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::f717:71b:d561:3313%4]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 17:31:56 +0000
Message-ID: <cf71648c-eed0-cefb-ddff-1b2f7809dc3b@suse.com>
Date: Mon, 17 Jul 2023 10:31:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v1] scsi: iscsi: use kfree_sensitive() in
 iscsi_session_free()
Content-Language: en-US
To: Minjie Du <duminjie@vivo.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "open list:ISCSI" <open-iscsi@googlegroups.com>,
 "open list:ISCSI" <linux-scsi@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Cc: opensource.kernel@vivo.com
References: <20230717092657.9776-1-duminjie@vivo.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20230717092657.9776-1-duminjie@vivo.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR3P281CA0126.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::16) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM5PR04MB3089:EE_|DB9PR04MB9817:EE_
X-MS-Office365-Filtering-Correlation-Id: 645d84c7-a058-42ee-76c5-08db86ebb829
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UMe0jXiUFf9x+WTYbpliGvucbQZFZ1howBK3oX89ZKQT24yZ57wGp6Vmo4XSnC++doPNNImFb1NzDDyjJVN0YKwyZpEdY2psHVJF5/2C44s78QJDQtXNA1ZM7k/CcXnNhVFnpj8YM1fOfxVbCM/WY04+cFPXXlI2946DLCzubuIvDi0aCeWNjYQh3qT0zbJC4qM1m7jbeEXUX9yLHNdCbvlfR5y46U41Q/4NQbEEyrIh57aRIEGoKjS2nZZkiZGWhTMZ1+37HPcWwRCm2ZylMfx0tt937jWQHhXiGxgNsFqoCCiABrl/ioD0DPsn90vdttc7XpDaRExahkxMhvG4IwpTqBAdnhtPkagVy4fgFjvNpG8XRFtqdv1MnjFTx03Dxm71L5mXnu6vzjggV1+mxw6n0SxBMPmoiQtoJRW1ehesN1oca3Y+uJlm5arbO0WTDPMJNFwqwmWe0W3H8/c3H2w2+VXH5AGSBRL3T+a7qeNLQAEdw3hiSKsINebjhJxQnJ8vdlzWjSKQdOufOwQaBP2WMyQn0LB0eAuWiw8q0DrRb34/eediP65cR50b+OPXfbv/50mVvjWdF9onces1qsxt8Uo+VQVCf0JPjgRHKob3Bp/WQk3LfyAxfe5xRCJPP2/qGva7ZzAZ++NqFhO+5A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(136003)(396003)(39860400002)(376002)(346002)(451199021)(478600001)(6666004)(6486002)(110136005)(6506007)(53546011)(186003)(36756003)(2616005)(6512007)(316002)(2906002)(4744005)(4326008)(41300700001)(66476007)(66946007)(5660300002)(8676002)(8936002)(26005)(66556008)(38100700002)(86362001)(31696002)(83380400001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODZ2VDdFZ041akFXMnpFMHdvZlE4U1BHZ0Njek5nbXpOZ2FhL01oT0x0M2Fu?=
 =?utf-8?B?aStIZDg3cmhLeVN4WkU2QmEwY3JBU0kyanRIZ21KUmFYeGdpUFBrU0dZeUw5?=
 =?utf-8?B?SGZjanZwa1VkTFRHUmtBcU9uN3V2bU93Y05IdU9Wc3NtcVRkNFlKYnk1eVpO?=
 =?utf-8?B?ajBjYjdsOVZNeHhIbHVDMUh4WVcyeStrbm9YK2hSUEg2MnhvM1YzZU5paE9z?=
 =?utf-8?B?THFhWGJvT3E4Q2MrVXhwckVvVTQxMnpTS1prbEtXdTc5eHpIeit2dmg4RnY4?=
 =?utf-8?B?Mi84S2VBK0JmYW5kcHU2djMwNk95RGNRQmIzeGJ1NDkwOElIYWJ0eFJwWjBh?=
 =?utf-8?B?K2FtaXZ6cit2YUxNTXc4VStCVWFpWkxFazErZFBha2lmUGtrNDNQbDFNb1Fi?=
 =?utf-8?B?VjdYR1dGbEJxZWVVOERxbDFtcFBYSHhUbWQzSUJ2aUlaeFoxY1hoYWJITHU4?=
 =?utf-8?B?akFJd0xVUjBDTGVhQlN4TVRkbDRMdVEySVpFdTQxa214ZVp1WjJ4Ulk4SDFv?=
 =?utf-8?B?VXRkL0M2cXAxc1VvbDVtU1VzWlZFSWhMRURacnJhRUtBZzV1R29ySHE0ZTNX?=
 =?utf-8?B?TnE3dkJhd1JWTGY4ajg3WVE3ekUxWVpiNEFHcTJCc1RISzh6aFRIK2g3SVdB?=
 =?utf-8?B?SGh1aCtQMHZvWkI2b0xLaDE0WFM1N2IyT1BUMURoY3NESFk1QkdmZUVwQWp1?=
 =?utf-8?B?VENhaEF1bFRKbWFWMVNTdHFIQ044NGdIamZ0bVFxYnZvcGROaElkQ0p2bEcv?=
 =?utf-8?B?YnhtN1BUeXV4d3dwQ2QwOVRWNEcxaWhJbEp5ZUIxbW1YMkRLVHBFbURFMmZw?=
 =?utf-8?B?ZEljSy9iTk5pVWl1WWdOTm85SlVRaGE3b09FUCtZV2RIUmViRnpYZE5IQi9Y?=
 =?utf-8?B?UXB0Yy9qUTdtZnVzRXIrd1JGUU1ZVU12aVZkRUlHM2gvcFNVTTlKVEZjSDBB?=
 =?utf-8?B?RDg1ZFdKa1NLNkpaV1JwNnNndHdrWS9jSGdSdmFjaWI0aUNPa2x3NnhlSkZJ?=
 =?utf-8?B?OGI3aEpnQVBtR0NzT3NHTlZiSWl1aGl5alVnaUhpMkNMRDdRNktzbTJCWVc4?=
 =?utf-8?B?LzBFcFZRUmdtZmZXL1hqNXNicm40anoyQk5pT3pVVVFYbXQxVHhpT0gxRE5G?=
 =?utf-8?B?eGoxbmNrR0hJSm82eUk3WHVjaUxJb2pEMGZWR0R3TDJLZDhXdXRGeFd1RXpa?=
 =?utf-8?B?djRtMWZLMUJGa0JYZXN3UHc5d1hBUjlyRVBBU0pFY1hGZ244S21EeXJGa2lv?=
 =?utf-8?B?T0p5WVVZRVJYdWI5Sk81YU90amczTUxHRHpNY0s1MTY2RElDNkZMUE5WL1pG?=
 =?utf-8?B?Vktya1cwb2JBbGEweXF6TDFuL0R4WUdFTVY1YnZUTVJ0VS95YkJ1c2lXbWhY?=
 =?utf-8?B?YjY1Zmh0U29rZ3d6VXg4ZWFmek9odlVoSGdZKzNKR2hERDBnZFdybDJZQzJR?=
 =?utf-8?B?Z09OaEs5L3dXSE5CSjAyWENVZnkvcHdUWHZ3MWtqOHhRaXpiZVc2V3dDREJj?=
 =?utf-8?B?UElHQ0ZZbkJSeXdWbkUvWE9kc2U5L0JqekZIc2dvUGhMbjBHM0dzWjJEbDgy?=
 =?utf-8?B?dm5VdjI5SFV0clA2OG53dFBMUGNnWCswL1lhNEtvTHc5bHlxUTVUTHlONlNT?=
 =?utf-8?B?a293WEp6b2c0ZmFuN0o5Z3dDakZ4U2lWY0tGOFVjeTh0SlVnVVBTbGovcEQr?=
 =?utf-8?B?Syt2THA5cjIzeDd4U0pLcExnL3VPbnVKdFJiR0FvMDdtT3BEdkJuYm5aYXdN?=
 =?utf-8?B?S1hWVXM0aitaTmJobndPVmxMYnF0VmpMZFYxWmxqVzFBaldUa3VuQmFldmR6?=
 =?utf-8?B?UUQ2aWlXWjhmRjBUb1hSbndaMWk4VVI4WS9odWVsWEFOZ3V1KzlVNVV5Zmxh?=
 =?utf-8?B?NnFHMysyaHVMbm16Y0R1Rm1yb1ZwNzlFd0dTSmNsdHJrT0pMWGtyZUcrQmtl?=
 =?utf-8?B?aG0xMmhTR0xaNTZueDVCZUd3a2prOWFqL0R4SUJNSEFKdmpPQml4S0l6WkJH?=
 =?utf-8?B?Wm9hbTVtUk9vMDFNQ3JXaThYbHgvdC9oekhxbzhKUWRvSkcyanhkVGVXWGdm?=
 =?utf-8?B?azdOem13Vll5bmFOQUFOQ2d0ekptbGIxenJ4ZHFxNDNVSC9TQkRkMFMwTlhJ?=
 =?utf-8?Q?AcAEZijTnK+OfSHJfiD75g6ju?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 645d84c7-a058-42ee-76c5-08db86ebb829
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 17:31:56.9432
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fWA/qGrosL4BP08F3cQWMaOsJMBO+TMs0EhrZ/hrFZ2GFtrUFSomwhNMVs0LvoH5R+uaD56lP9MLDnzrV+0bHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9817
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b=IU61qMwG;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 2a01:111:f400:fe16::619 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Lee Duncan <lduncan@suse.com>
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

On 7/17/23 02:26, Minjie Du wrote:
> session might contain private part of the password, so better use
> kfree_sensitive() to free it.
> In iscsi_session_free() use kfree_sensitive() to free session->password.
> 
> Signed-off-by: Minjie Du <duminjie@vivo.com>
> ---
>   drivers/scsi/libiscsi.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 0fda8905e..2f273229c 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -3132,7 +3132,7 @@ void iscsi_session_free(struct iscsi_cls_session *cls_session)
>   	struct module *owner = cls_session->transport->owner;
>   
>   	iscsi_pool_free(&session->cmdpool);
> -	kfree(session->password);
> +	kfree_sensitive(session->password);
>   	kfree(session->password_in);
>   	kfree(session->username);
>   	kfree(session->username_in);

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/cf71648c-eed0-cefb-ddff-1b2f7809dc3b%40suse.com.
