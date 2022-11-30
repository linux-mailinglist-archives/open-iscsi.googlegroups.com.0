Return-Path: <open-iscsi+bncBD54HHNYIIILTQ47TQDBUBDJTB4Y4@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC0B63E436
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Dec 2022 00:05:31 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id ay19-20020a05600c1e1300b003cf758f1617sf1620854wmb.5
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Nov 2022 15:05:31 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669849531; cv=pass;
        d=google.com; s=arc-20160816;
        b=wkcwg2UrbYJCxE29tdkJz+gypHXvRihX/izapjZCs3NQVLle1afx8ZXrTYHuZAGEiX
         Vb0H7EUOoJrV+VdLzw0wWL88cK6kVM359q1NnoOzz0ypMd48UiyJpUHjuAcx4Sd+djkp
         WYF3joJsSVQyOj/nu/EuNibypmwm37YGhPERPXVlgHQhSbvjiNtaIlhNuEAmbyP2LHGK
         CYelcXkQy6ON1iJJODWJGH+TuL00qEoDzrBkqf9dfh/egzD1jx0D24aysSh0Bim4vU55
         UUBRBHZl5n0iS1c1uKa1VkNhIJKelrKjPRuP4pUAru12Tl6aT+Kq1vrpj99qpRVi2vJ3
         I+/w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:dkim-signature;
        bh=Qa2paR+tZraLyCO5Tx+eu1eOUOHWeD+YPA26X5ejld0=;
        b=x6o01HdoPabGEa8kCLOItJXM5sTzh03DDrEBSkTdgZYUjCsfyeAe3Mag6mnpunF3pu
         MRibJ/L6KX6XAaMIUn5tYvoZPRafkh61mtNsntBlS1ZJYbuJ4G1RLGcfA0p9X5Mv5LIH
         +oRiYy1k2kVaO0yRAYYZjpdnEFzKgpy2lT2uDK2wcgAeI9CoOcMaMtTIe+tXmf6SUPsl
         t7lcj2FvIPYq5R0yqllBJobbQ0WFq9a38Fk9kv8xNVAsAVXbbXDm3/hMIHc4C7uc03YU
         qdin5w4NfXkVms3x9G2OOL52X4xePc3G1pZl1GTwcBXuow9Z4pMSJrQyR125UVLsDJZ+
         yLCA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=CIpIZPl2;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 40.107.13.54 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qa2paR+tZraLyCO5Tx+eu1eOUOHWeD+YPA26X5ejld0=;
        b=T3ZcnCvqMjPNvg1eZ4hwMto6EgOEaWSczWqQwS6ML+DZ7bvxVYQR4u32vjX1xHY+Zi
         2d/P7X5gvwf1vneT17R96AaLfldmNGbohBolLvtZ4hwuIt3g8rMjFAZghHpCOlZJXxPJ
         Lvb5HbWYRCCXYaSQWwFmpcWTqaNf/Vd7pCdFcG8h5ru3nSVogsB/fFP1WSka0Uc4gLXx
         MucZWnvBhWoDceolly/kkgjbETmk9jWKIt8r/Wg8reHm05b2Nnz0vq0NSkkhKyOoa06d
         2qQr1sCV0Bcux2LEbRfo5RA1pWSIYA6MMWSmcGbt7k+CO7FJWFxT3mkRs5iYT1tmB6Om
         +PyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Qa2paR+tZraLyCO5Tx+eu1eOUOHWeD+YPA26X5ejld0=;
        b=RUytwr8ZOmAxR6frj6ORpsAPmwi5UnOq+yAe8sA3JCFeBlpDdAVG/H8n/KPtOysn32
         Sem6lEEkw0VRqeG+ADfVRf0kNb7XAsbHzekEKl1poyb5syCCFFzclB70uM/59mLs/BPz
         gKahAVT35FzCPUa6nuYi1OHjC28QkrJRTEEAXOpZ42RJIYl77PUSAuGUZMZMPsdeKbIR
         UsO+hkwS19GhvaoYLkF79Pe60jyBsVO+L4IWIi+3kk4+qJr1Jo8GeGnnLBDZwKH6/4kK
         mBn6PENeqA6ie9/Jtb8tICCQm7hAQ9OIKryrreAvAmF0j1r1OBYXEEcqTZ9jNLSNQkTX
         jY1A==
X-Gm-Message-State: ANoB5plXSLTZkkO+1z5nchf61ZQgz3WjJYPOI+rr25d1dHkROi6ah/+0
	Dzq9Ws2CySvlEbZGsqYu8qU=
X-Google-Smtp-Source: AA0mqf74RCEu+kEd72x15EqYhfGiZnDXF4v5VJR+dih7amzbIP2ketorA5deEIvdkGW6vvRktJCg9w==
X-Received: by 2002:a5d:6088:0:b0:22e:5149:441d with SMTP id w8-20020a5d6088000000b0022e5149441dmr39046916wrt.661.1669849531232;
        Wed, 30 Nov 2022 15:05:31 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:59c8:0:b0:225:6559:3374 with SMTP id v8-20020a5d59c8000000b0022565593374ls276128wry.2.-pod-prod-gmail;
 Wed, 30 Nov 2022 15:05:28 -0800 (PST)
X-Received: by 2002:a5d:4f82:0:b0:241:e8e5:b25e with SMTP id d2-20020a5d4f82000000b00241e8e5b25emr26264689wru.356.1669849528738;
        Wed, 30 Nov 2022 15:05:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669849528; cv=pass;
        d=google.com; s=arc-20160816;
        b=0IUYjemHcWr5q/7kOa2wzdRZJJEaoAchLisKsXkTBo3B/TompDu8N+ordXXquzo9Dm
         OM0Y4sKz9O4DLKxL7APvXtj2yKN0Ptu46ojFIfcfXVqob+Y6SIxosZyvXKRsAnWbKI1/
         AYXzyXuSQO/7cHCh31BsPZGI/PAc5wmT1fdsRZAQynmntQX/AeeLn60yK8/QgRJDj5Je
         x6UeIIU4cJ6TpkJVvbI8HuxZVnH8iFelYYpHaQT5JA/Xyu4Y41wM/cYF0V7nuhzsXdXT
         VgTObKYH9FU71a43EmQLqvY0UpGwATTOMQUNn3+7LhSYO6IWqNfjf3ywNujCxio10j4o
         Atag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=9Ol9+ABUe2wucKS9UeL2Np+96g843UKQz9SNUwPYd5U=;
        b=vOgVJCc5/ozH+hB8K8ojSijbBHligYTlpRGFu7jLA9o8KnOLU8rOEKYnoGVeEaYLf8
         TwDsKoIoDWwBWyubA94evOM47x8pOn8rnKMpiTZ9Rh2TSD5N06JtZiN4Jxn1xLNSuXoD
         Bz3hMOm0DXBWK99Wlq9kiZgT1qEyyFb5fY46dT0SETcVEnUE4Xn45ZS9ak7uywjxewDS
         zaNRFXAgC5ZkG503UtTfLaFtK1OFZLDGf0c9BJygnMpnLKDQ9RtQKIb5apo2t6QC6J7p
         o+7KdsDUt/anUUZNAKNo/Rvb5Po78W/akNvwPUmY1OYleKdhcZ2SWMlSPcwexAo99Tnc
         F1RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=CIpIZPl2;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 40.107.13.54 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-he1eur01on2054.outbound.protection.outlook.com. [40.107.13.54])
        by gmr-mx.google.com with ESMTPS id bn28-20020a056000061c00b002416691399csi119157wrb.4.2022.11.30.15.05.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Nov 2022 15:05:28 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 40.107.13.54 as permitted sender) client-ip=40.107.13.54;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jHcspTumy6gaI+hIwg8wNQRlNKw1jAQXwjk2ZA6r68kThlVss4XB7Jn85zeleLD2gT/hCmphwa5h2/+l/xSk9EBgPdomyCYJRunlJmfQu17IgKnsBxkHmq3fInZT/PeZ2juj1zBIETY4/elImrSLQ+CFHrY3YtfOvq2ya9Tw0VeggFRRwRibPa+XTQBGftOn9SpXjqGdpz87cvAULAVIKFvAUMDqCxgGLnPlsIQUKoKjMl7HlxIicJb7EmIWIrgQd8IeYiLfEIJ7zBFaQtRisPxNPhLnjcrWVga+/Kgo6FB6IA3aWIv3uPaOsbp+lguja27UBhakduDZWT9yPymLRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Ol9+ABUe2wucKS9UeL2Np+96g843UKQz9SNUwPYd5U=;
 b=ZNyE+mgPHjaFBPOGk32XLp23fiuUCE7TarKd3T8DzhVkOsVw/WmlbiXj2AALTalh0XNTFtGjFWvlPiu+GjjAEL217oh8+F8RS+Ptzv8GoCIE26swHgZ5DU7DKDytqyzI45HauG+o1xvKvy0afuB+gGy0IZ4fVryWlx0SxCnhm3hlnixdFexyNb1Dhir9Vj+lSBItrsvHSLL4qCktEjToPpSwxNrbiaGZPbq9xaYfckFfmFxa+ycb42iXAok4et/yeZncdDB6149i+hQEQNGr+JrHM2MHkFXmNn8iyBDJjhxDgiQCh+FSfIvrMuD9aPG6kPR7i+Xc4McVrkWlcEuXaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by PAXPR04MB8592.eurprd04.prod.outlook.com (2603:10a6:102:21b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.19; Wed, 30 Nov
 2022 23:05:26 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9%5]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 23:05:26 +0000
Message-ID: <9ffb9d42-8ae7-6547-cc5c-1254410a999f@suse.com>
Date: Wed, 30 Nov 2022 15:05:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>,
 Wenchao Hao <haowenchao22@gmail.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>,
 open-iscsi@googlegroups.com
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
 <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
 <057b6774-646d-5970-4743-20e249856688@suse.com>
 <5ae1b303-75c8-1dc8-d631-bff6db53081d@oracle.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <5ae1b303-75c8-1dc8-d631-bff6db53081d@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR0P281CA0109.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::9) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM5PR04MB3089:EE_|PAXPR04MB8592:EE_
X-MS-Office365-Filtering-Correlation-Id: c84c8732-db06-4abf-4fb9-08dad3275d9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: POUidq9Yz8UimUD6ng1jhYF717qeOg9nJ1iWUhhg8LyhoAm8J7aj/SKMd0phMWeUtA0h0ehTPbahUUtfMQFyd1Mwo7/PNunMI3lacXKwAv2VllaiE0wyfJUrO8ekbpd4WDljxQ5k4K0yoYhcyYu+PCE2Q1Q5LLbY/LtrtY9HBTBgNMPb1C89QuSAjP+RT5QuJY1U2AUTlyJSFHaiexg5rQhMY9xisrZbPMoIlUHJEVZ5o0io3LIM9fV6GsSNKLqyz2omt5cEzEM81MwrQzXAxV25piPr4HZaFAr4V1pDtGE9/bpWOaOpw4Ck4aeLAJlSro2rJNWaR8X4Aec5/OYIIpROqPHxg6oQep7kQrbiflNtb4mGVmgVBKjeFrdunXJArFhqZm/25qbFWMrV5xoyPWgdJT2+3sB1BQcYsy3z8Squ15n5WQnKi8a1RkueuSRPybPDsZFipyY1zo7pqWQTRG6pqQe8SLwVmjfN+iClAWm52knr7AOB6cs/UEkklZwr0kxxi+YVSP2c4m9yddyXeIrf7OLKopcOgjn6bDb44cVk/Q4cuyenizlQaACjNKAReHlsgAqSnKINJBUaBoxsRqteEvKVELaUkuo6r4MwKBxDJfcVYnVcBUzP3+Rtd4o0Xa0h3KTCDe8cbBNVSAxqRvugXQtn3jBQqpJ+8RyTtV3vmsIZ3t6u2KuXZ7DwA1Z4ptV59qNVgiWU2QVe+l5TDWFKWtSC5Dr62wcOeRtNg8M=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(39860400002)(346002)(366004)(396003)(136003)(451199015)(31686004)(6512007)(6506007)(6666004)(54906003)(110136005)(86362001)(38100700002)(6486002)(31696002)(36756003)(186003)(2616005)(66946007)(26005)(2906002)(8676002)(5660300002)(53546011)(4744005)(8936002)(478600001)(4326008)(66556008)(41300700001)(66476007)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmhmU1RpVjV0UjhTZUthV05Nb0oyOGlwekJ0R1lQYVZmR0FPaDdGVTFyMk9Z?=
 =?utf-8?B?VTJaNTFzVWkzK2NQREM2S3VUcFZHelpoeTg3d2gzZlJQczc0U05KdW8rZmVB?=
 =?utf-8?B?NWZaV2MxOXpRRi9hQkxrRWI0UGZTT01FdHNTNWt5bEJkcWF6NGlObFJoZWVr?=
 =?utf-8?B?N3JtbmhORVpvYjg2NjFMWktqMFI1eXBvWFdVNTFsNmdJR0tHa0FndVVVbm94?=
 =?utf-8?B?TzN5bk1hV2QyWDBtdk92ajZJWWhocGMwRGhCOFAyaGd5clZXL09VVXN2VHhw?=
 =?utf-8?B?SWhxalZGMWtONUJ3elRyV0huS2UyR0hPSzJGVlVwY241a2EwaERlaGNtZ2RJ?=
 =?utf-8?B?R0pGOVlseEpnLzNBWGpGSzJCUVNXVm5Mb0xMU21MNTVWRTdaTHZQSFEvVnho?=
 =?utf-8?B?bnhSaU95emhQSnRQQ2QxbTNQdjVXNzBBM3l2K3N2MS9qbkYzNWwyYkFxRUFJ?=
 =?utf-8?B?Q0ZrV1JYaGJnOHd0TVVGRm5vM0lHLzdDTW5vbFR6UnNhbFd5WE03YUp1WXJZ?=
 =?utf-8?B?M05TOVpUcVBIcmNWZ0ZqRm9xOTFWY1NiRHA2MUdWMmRiRG9mNWpUOUlFM0dV?=
 =?utf-8?B?RjBSRytWd3lyMUdzb3R2K0pzamNKRm40c016dU9CVzJjTW1yM1FhR3hvbGtZ?=
 =?utf-8?B?azJZYk5BM0tiN0dkdFFxS2JibmkzM2w0YmxlRVhNSHVUTitoUFEyTC9WUzlt?=
 =?utf-8?B?SXhJNEh1cUhaNG9FSUVIWGZkZ2Q3cGVVSEQ4cUlsQllta0E1SEx6N1dxMkl4?=
 =?utf-8?B?L0F5bGU5M3dmNjRyTDRPWkJnb1A5RUF4T09mTDZWTUN6K0dHWFFlRmRZNm5N?=
 =?utf-8?B?a2drQkh0T2dFanJWR0x6THM4T1FEUTVKUXFURkQxUTJXN0tIMjVVS2pwaUcz?=
 =?utf-8?B?YjBHaWdDMDNqWHdkK2xFZkFOMFVaRDRZd2ZtRXJHWHhYbE9YK1VoL2YvVXBS?=
 =?utf-8?B?SDRVV0dmZTRqVkR2VHZFU2YvZllmcXRia1lHRHFTNkJud3U4aC90enBFUDVF?=
 =?utf-8?B?cmdkRG01ajdjNVNEeGRITlNsazVOaWh4RCs3b0Jnd1JlSTQ5cnA3WmFSa3NN?=
 =?utf-8?B?ODV4NldNalZkKzExWXM2bW4rcEF3RXhoM2xVU1lTL0lXTHUrRVFqRFlTREFV?=
 =?utf-8?B?SmwrbTdZTXNyN01BNkdyR0ZnalhmeEtrUjdGcnlwWDdDa1oydE1GYVpIRnY4?=
 =?utf-8?B?QW1kVXc4alFwa0h0aENTSlgvK3Y0VERvVVhWeUZZMEFCeStXNmd2aU5HekxM?=
 =?utf-8?B?WHZ4bzJDS2RpOWpXWE9IemRwUkNKL3AzSWlhUERHWG9yZXl2K3YrYnh3c1V3?=
 =?utf-8?B?M2ZZWFpneHRlcnBBNmxxT3l4UW03ZnhTK3UyTktMMU5IMEVJR0NpNmk4eGlv?=
 =?utf-8?B?Rmp1c0xOV3ZmNThFVXBnbGR0cHlKT1R6ZTFCRkRCMWVkUXpacDhwK1phcStu?=
 =?utf-8?B?L21zaXVIbnZ4USsxclJFcDhUMlZzMnNCbk1IR1N4OCtMLzhwaklvUlpRZk5h?=
 =?utf-8?B?U2VTVHlqTDFBMzRpU1lQVUlTbGwycUJUeURlb0xiYkVRWHYya1FSN0JIWVpO?=
 =?utf-8?B?NXY5R3JtelV5ZFdXRitYK3F2UTJieUNlTU55OEJZZk1zVVZRU0hBTHgremd0?=
 =?utf-8?B?Y1lzSmhkb1lKS1dMN1FnNEJTSjBZcTk2ZGMrZ21MSVRyenFHcmRQWVNHSk5J?=
 =?utf-8?B?cWpHVFh4bms0SEUwWVp5V0hielVvM0lqeG51V0EvODJUaDlucC9vY2xuL041?=
 =?utf-8?B?WWRDcjdzZmNrVlkyNFM4OW9RZXBGaTdsNU15dTQ0R1R1THd4am5KaTZUakR5?=
 =?utf-8?B?VWNGVUR4UHZHNW5SRXZPNzU1aVFWZC9xOFQ4Z2QySXBFdDhKaFJXOXRVcE1J?=
 =?utf-8?B?RmhEaGJQSWdCeks2d1hGNUx5U1EvdUYrYU5GZmIzME9yTkQyOEdweHNxN1lt?=
 =?utf-8?B?b1Q2Z2tLaEMrZjh6d0srVDBkT1NYVTducU1UK1hwaWZUZlFYSHlDZGw4NUFW?=
 =?utf-8?B?TTdwRGc4S0lTYWU2Y1Ftc1NEdmdwTWl4aHUwU0dNWG1pMDRhbFo2MEVHemhI?=
 =?utf-8?B?RVQrYlpFRUloN1c3bFBteklVeExtRzBaR01jbmYyalM3d0dFcFlTdmZTazhH?=
 =?utf-8?Q?4HoBLpa2anRNpoZAu6tCDUMAw?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c84c8732-db06-4abf-4fb9-08dad3275d9c
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 23:05:26.6087
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tFe3NkvVgoC5APBnHf7uZJ6AszQG3lzHIVoWbwlbvMlCL72EnMLfJM8L/p3zuegfLEVPZnl6TrMX4plgUYwdlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8592
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b=CIpIZPl2;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 40.107.13.54 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
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

On 11/30/22 12:08, Mike Christie wrote:
> On 11/30/22 1:53 PM, Lee Duncan wrote:
>> Have you already worked on the open-iscsi side of this? No reason for duplicate development.
> 
> I think you missed his reply where he said he was missed the
> iscsid.safe_logout setting.
> 
> 
> 

No, I saw that, but I thought there were some cases that might be missed 
by checking for mounts. I also think having to set "safe" mode globally 
is inefficient, but that's a separate issue.

Was the plan to retrace the changes submitted and accepted upstream for 
adding a sysfs entry for node_startup that won't be used? Or is the plan 
to populate that attribute for user consumption, even though it isn't 
needed for this particular problem?
-- 
Lee

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9ffb9d42-8ae7-6547-cc5c-1254410a999f%40suse.com.
