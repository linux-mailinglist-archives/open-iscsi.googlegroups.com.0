Return-Path: <open-iscsi+bncBD54HHNYIIIKXLV2SADBUBBJGH22E@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEC64BA891
	for <lists+open-iscsi@lfdr.de>; Thu, 17 Feb 2022 19:42:54 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id e16-20020a2ea550000000b00246029bd00bsf211651ljn.23
        for <lists+open-iscsi@lfdr.de>; Thu, 17 Feb 2022 10:42:54 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1645123373; cv=pass;
        d=google.com; s=arc-20160816;
        b=lS1oXU7GVCcuKUFZboU1T6COBBm2tdIU2KCftMG5jApywGS4/uGKKQzNN3vYqkzRyG
         ROj59pasPapj9t4akEOUSI87RyPEasAiVSq45vsqmrKLF2JtAobwvKAN49nV5jSmHrS7
         GXGlgjS/50sTviUZbh+p6uzk48x6B99PL4VY/GD9PT2vUm1j9/n5EO9+43xxSKw7oixz
         1pselvquEyK7nVg8pEMvOfTpWPe3Q4CVAJro/OICXf1pBgS2ryeT+ZTHnimY4LMbwEPt
         fHTOc/iKhO15vENYiEWgWCSR3v9E7uZdbx6Kt+5xI+/8txI7c7VfP9s/utWhhdWVqa1w
         TvSw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject:from
         :to:content-language:user-agent:date:message-id:dkim-signature;
        bh=q+uRF7D/2yyvJ7+Y9pcF286TAuMEMVCxK5JJdyXe23o=;
        b=m73Cs3W1i/1u3UtzV79VPNylcGLk52WqKlYE+8V5sFbwRII2FFE1vFynJ6zYGOvb0+
         3uNb8eD50uMM0ZyrWBHfTMsHIjm0sIbxB1K/sKq6qcP7vqZTNV/K9AeDXG3GKyFykHe3
         UHfYQUlKUKV+lM4UyUp6H3mz3uvoRkvoeyZfD/HeMC/AA+eMwG/EKKsd4CFdY7Qh5zsT
         vzDIGWK+Hlqo2ZrCXyqaPV4ogmxQ0yBuNRhP1xG6rmnsziExCMBVPwLeu8epv1Qnocku
         bL7B53n/A8bMFEGubeiu+Gj5YNuYJqWgfOuK0+ou6uPcpHTaQSpeuFz/tZaHV7hDgzHm
         mo7A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=i7qajzMf;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.111.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:user-agent:content-language:to:from:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q+uRF7D/2yyvJ7+Y9pcF286TAuMEMVCxK5JJdyXe23o=;
        b=ia7ZmdD4NeVgsRxCdJ+LFWkLTY2Zu8Wfql7oGYGYQZdMQ8Z8/cRVgC1ZwBWYSrkStf
         U2SE4KqD0J9ingXdw42Abukea3h3GrrTzGBJ9B4p7frpRibMl5IcY7gfKg+qrd2f8qra
         RId6i7wZnp61DgsXabn5xZjH9d489Zaoqzhh95w5J/c3Bur6rYxkHehm3doTl/fQ/2KC
         Bf6P5CGPxesOVVGDi7DcG7FALW+XqSL8C4AFvDZ8Irj1XAYZOped4BvUlPWEb56gUWqE
         60JMaDwuG4WmbEDH68u4L3Oyo3X5XonoYXo19sVGgVT5nnNOyCI0BD23zHHwkHNoIes6
         4Uqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:user-agent:content-language:to
         :from:subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q+uRF7D/2yyvJ7+Y9pcF286TAuMEMVCxK5JJdyXe23o=;
        b=oncq/ZB1IspuY5B5cd8MMXPdNKUtxn4CKncd3WQc6TSby0r3cOH38ljv6UWNNfzkW1
         2Gm9Se2llVRuV27W7SCXhuY049Zg/03pZgoIby4d7ATkYay+vzEtRPnlEYa8JVHsU8R2
         BckFlCr/CXF9hWik46TE5YQZpYfj571vU6TCsNVdoYasxZwKvDDaUzR552PeSml38PXf
         qFqh/VYlsMhiBkR6CXyNpvIF+r4UOEWL/ERwsH8Jqhn8sed5XJziNl5xDpnqBIfOP9iw
         PtV49B6AXmCrCaDBTCT5kL89+b8xX5Y1h2EEm8FHAAPGPZDl8Mt/0Zn0IzEFo5QSl5eq
         RrVw==
X-Gm-Message-State: AOAM533nNJL4y0rXAHBoA22bug5gC1vllq4xQLLjvYJAH6+02rh+qOfZ
	i+GNyNxrBvlFcYhTGoN6E5Q=
X-Google-Smtp-Source: ABdhPJwyAAs883ZHngVFF/Uo3kboI8O+IMWiMIpUibbxXA80XkAQJi0HTLB36u7gxzyRAHYLVDYEjg==
X-Received: by 2002:a2e:9847:0:b0:245:5aa9:91ad with SMTP id e7-20020a2e9847000000b002455aa991admr3079537ljj.59.1645123373650;
        Thu, 17 Feb 2022 10:42:53 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:212a:b0:23d:d210:65e7 with SMTP id
 a42-20020a05651c212a00b0023dd21065e7ls814693ljq.9.gmail; Thu, 17 Feb 2022
 10:42:50 -0800 (PST)
X-Received: by 2002:a2e:b5cf:0:b0:246:2235:31ef with SMTP id g15-20020a2eb5cf000000b00246223531efmr350328ljn.9.1645123370539;
        Thu, 17 Feb 2022 10:42:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645123370; cv=pass;
        d=google.com; s=arc-20160816;
        b=qaWd6A3cOjv0xNFSRaGdD3lMBAJJBKkSkr6Lr0usEO1hL7Tskh0yrzYAJrzoNmlA17
         4B3BCEz9Ov7KSkEJB736PlTCwy/BAnyaAeRtw1jDJdIksTzG/M+aB2m6Q5z/a3aULuQk
         6Kd2X6N7xFMzynxz2L4ykKdnRe7G4k3gRwA20DIU7p6I1Oi8M2waWAsQjRDCfl18U1IB
         Ry9VUgOP7Umvx3YZD4M8LUjhK7e/H9wtd3CGQK6cFOIIbc2DPzQcoeQ55tyODwWTb9OT
         W+MDTzI+Bk9b1HYCLWm7drr2uziW8OHTfH1doSeWeL/aGUHT+GgOMAk3LNTgn/Zhr3Uv
         4nrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:subject:from:to
         :content-language:user-agent:date:message-id:dkim-signature;
        bh=5d0LV12iCt9hzkXZZuL1llKP8YPpibwx8TVGU6XPByI=;
        b=pBQ9H+aWHJw4rdO9zXT989EtW/vEwoQ2/FqxcWE3Qvy2dWVCzVxzgCsbYu2qOolcYV
         C+6l9y2a1ofZMnBPVp+EXSwx+cYIqtl0x2lDEEosQm/mV6uZzeLuoKSlAa6Ilgue2wJt
         IokPppM+i2O/b0NRsWmjjz6Hzld1uSrfDpk8aYlgqSlXiQo26gQ7sgoVvLz3/7njBzVF
         MakOSskZ5cj+wUO9FM8wrkhZKjq4OLRPBZQA3P9uFeWJQt3A4Tm0qiu37CZgFM+y0uzj
         L02ZhKO/S8jtLXKt24UIE7cE5FWnegxF3cUDDwigFDcXxrp3mxPuTw/EO77GgrnGQK08
         V3Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=i7qajzMf;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.111.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [194.104.111.102])
        by gmr-mx.google.com with ESMTPS id x19si45435ljh.2.2022.02.17.10.42.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Feb 2022 10:42:50 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 194.104.111.102 as permitted sender) client-ip=194.104.111.102;
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur02lp2053.outbound.protection.outlook.com [104.47.6.53]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-6-ad9tmNGCPkSlk_7vz4l4wg-1; Thu, 17 Feb 2022 19:42:48 +0100
X-MC-Unique: ad9tmNGCPkSlk_7vz4l4wg-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XBUF/Q9EUBo0ax+SIbAMZeUEFt+NwX4ziriwxR6EmxYF9ws0BwUWO6KfU6puyvMpKHlVk7FGs5LD4NHSzIAOS3LWwsd0f/u8Jn1o9Dqtr4aft7NUReGYw0yqu4C8ym1AUGqH49tMNZDPAP7RkkxhJ/Xur6cWX6y0TDloTTo11s3+oFqhyiyFlcI6Yx1p5+ythTFEGJq6yRYE5cSCxV+SBgGQkHuOjhmZMtPupXV154PRIhsCd79rf71J06ss59+hPzJNRRSHpp0u4G5XDnfFjs2z3PnarwHGm8vGiZgXOEVvAKQ1Q7EaaMyvwDGMM9tXGuJZ2XNF7V7tJcI1WkxZVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5d0LV12iCt9hzkXZZuL1llKP8YPpibwx8TVGU6XPByI=;
 b=WR3FLGGqibC2ay477VVHqHx1CFt9yZPDkXd4kGBgJXQQpn3DRG4EAVc2GcZyhPFv+XT1jirN6EwYWpP1gH20eSm6+09gOKFaVU5O2DxS0VY3C3adnhmgro/UgqShF5OOo+1+S+Y4ITufVMzUDoBbC+ryKlmpmOcImzd7qU92prrWDMrnIXDxWS/MCTnbvq68ce5r/vk+z/VW9Cmns2W1C4uiazp/Z0YOzWSXVYWz4VtYL4I6J78njiSLYWs9TzX86onbvF1HFrzbp9WmCkCbTyuHiPvqFxAROaDiPm/8A79DgjpRnmcGFAS42yeBbFrLzX4sqhVRCt3RuVHv+882Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by VI1PR04MB6238.eurprd04.prod.outlook.com (2603:10a6:803:f4::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Thu, 17 Feb
 2022 18:42:46 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::38e8:ef44:f684:9eed]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::38e8:ef44:f684:9eed%6]) with mapi id 15.20.4995.016; Thu, 17 Feb 2022
 18:42:46 +0000
Message-ID: <d72a3055-5375-de38-d286-8e88fc6c9487@suse.com>
Date: Thu, 17 Feb 2022 10:42:42 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
Subject: open-iscsi service iscsi-init can run too early, when FS is read-only
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR0P281CA0072.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::9) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e6594b2a-eab2-45b2-00ee-08d9f2454a37
X-MS-TrafficTypeDiagnostic: VI1PR04MB6238:EE_
X-Microsoft-Antispam-PRVS: <VI1PR04MB6238C586A194BC753530CB0EDA369@VI1PR04MB6238.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XHAk1o4yWvvfYyXXc/lb6an0D2hHUvTAWjWYNMb/zHY6z1jF6lEZdEOYj36xvOt9+6o1D8ccwx3y6PXY1wUwRldNjjI3os02fQpet2TvxSEQSTHnr8mcXGUi0csspuPA9Zste5mpvBCcx373ldC0pglJGKF4Y2Da1clqny2eBKavqEYdAdse9ZLBYYQpD4EmPi0UFqEgENaf15dEQBglckW+gfvG8oMs5uVo2EeNhVLJl8POD0fF8Me3/5krrVXJmw7Rns747MzfHyKF1jTzGVOV9FdSXurAFwntzT9UyWx5A8B6ZKARlIE8Lsnb9FWuT5Tgp7lfhSfMgwoG/XHuXMJy3Z8Sr5AzPxYNJ7CfasL9urNHtp/4Hoc7eGvXBqVZ0aJ/vgtOauJTdOBqA3MtUgK9OQhVAp8kfnoWn+ZBAtbKMa8vP/XiPi4JPQ271UfW1qVCxdswjHmixj1NLAcesGYgc4AifGbHU51DKL3LURiWzUQzT4CsNUvg9NGwpsY4iMHuviDuVM2mt3qSZU4i9bj9mEmgsS/QpB9LP2Gv33Zis85+N5E+veuV9JAodT4FfPrNUDp+eAcZkRjzgyoCFOqvdt20i0vmU56PjtMpFOtaA87LpJCP8X/RBPpTWuLIX/ryFRaW2xMaVugPjR7yLkmAvB5u8/VhwexsUx/voYgHfWwro0hVvJiRrjZ7t1wRoToRiTCCJf2o4Sd4wd5LP5OKUwrVtUxH+ZW0JK609/k=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(31696002)(66556008)(66946007)(6916009)(316002)(83380400001)(6512007)(6666004)(6486002)(508600001)(38100700002)(66476007)(8676002)(2906002)(36756003)(5660300002)(6506007)(8936002)(186003)(26005)(2616005)(31686004)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGJDcllVeXZoMVE5T2dMN09qTVpGRGNZOWdlakVLQUE3UDNNdTI0RzZNNXV1?=
 =?utf-8?B?M1U5RFBMQ0RnSWpWK3dmTWZpV05wMEJWeTZlYVZkRUR4bHVrTEZTTGZRaUpR?=
 =?utf-8?B?bTZPNDFnOUprUlhjUU93cmU1WTN4VEZ1MXhxNGtsRDN1L1k5N0NpaldqTW4r?=
 =?utf-8?B?WWEwV1dKOHAzVUQrdk5IL0RkYUtpQkYvNVlucHFHVWRqejJDcjd3WWtaaEFa?=
 =?utf-8?B?Vzgxd3lTRTlMT3orVTc1ZTY2ZGRObUZnREQyaXFLNmg2MzRLWG91TnA1Rkhj?=
 =?utf-8?B?S29tbUszRlUxanYwYWFUaVVld0tQaWlxQ3pRQWtyYy9aZ3JpejVua0JMek9Q?=
 =?utf-8?B?cTMybHd5ODFSR3p2YVR6VFg0QkprTzhBTk5IQ3NhZVU3clgyZWdaY0I3QzJR?=
 =?utf-8?B?aGg4MHY3ZUZHTVV0bkhITmhGREozdHYzVmZVejJYcVFDVFVFSDUzL3MvMHor?=
 =?utf-8?B?Z0x2RWwwdS9SR0FMeUlGY1ZKc2ZQamxXSDMrOUhndXptYnV1bDk0QWtFM3Z6?=
 =?utf-8?B?Ni9aakJRUEpxWG9Gb2RJT3VnY3hEZjk5WHFsUTZPL0xlUEZ3Q0RxaTJtVElw?=
 =?utf-8?B?M2UyeEhhUytDcE8xcm5LaWRUdE5DNWJuWHVSdmJKRnFYdnkwYStoOG5od25q?=
 =?utf-8?B?Y01PakE4a1o4dFNiSHlQeVFFeVphRFFsVEd0KzBkeUk3d205bmNOMENOdUhl?=
 =?utf-8?B?UXYwQTFYN2R5dnFBMWZ6R1k3VDFJd1VhTUFSa1RUU1pZMWo2clltT1FtT3pV?=
 =?utf-8?B?ZXFIaFpsTjNmRW82OW5KeFltWTBudXVOdTQ4UlRwNm9DbHRDUDBMcEVqc1RN?=
 =?utf-8?B?S0ZjeTlCTW5HRmsxY05PdGxIQ3FwUnRSWUNUd0wvWVVaWGd4bVkzM3I2dlA2?=
 =?utf-8?B?VFoyVW93QmV1TTY3R2drVjNFUDJrUkxWb0wrNTdkeU9vM1hXTjdneC9TRkRV?=
 =?utf-8?B?eFBQeC9TZW1mTlZXY2hGZmZ3SHZCbi9RemRlSWlnMmZCQTJmRzljUUFrTDE5?=
 =?utf-8?B?b3lRNzgvN0MxK0ZDNEVTaG1nWVVXM3BsdzJXeHZ0QW9OVk9YS0FBZnZzc3g5?=
 =?utf-8?B?MkJidXV1VkFUMEttMFdEaUU2RHU1TW9taWlySVE5dnE1Z0xwd1RKVXBGdC9V?=
 =?utf-8?B?dDdBVjdhMGlDb3dHNjNBWEZtT1B5TXFlZ0ZlZC8zTEs1VS9NbU51RXl1RUdX?=
 =?utf-8?B?UnN3VFNFTzBWTUNESUgwUXNnY0NMb1FQOXppbjdmWWhDZTRVMXlDQ0JEQ1h5?=
 =?utf-8?B?UHJPQzdhaXcxRU4ybjh1Q0pTZCtQL3poV2c2b0NZN3lVckVZR3YwSXZUR3dH?=
 =?utf-8?B?OHRpQ2dTNDgyc2Z6VGtBN3U4UXJGM04vdE9pMm1WZmRCNWhNSlNBQ0ROcmZ1?=
 =?utf-8?B?MEQyNHNOSVUvaU52ZjgvNHdKM1BhNDRwWHB3RTBJUG1vdmRCMVRHcFNIaG5O?=
 =?utf-8?B?ZmM3VTVpdURPZnM2Y0Y3MXhvWmpLdWNBZW5GMVJvbVIzU1F4SFdtTkNXVmxN?=
 =?utf-8?B?UE9iWXdVL1BUTVlKV0NEa0Z5RUFGaTJQbVVldUFFWmVyQ2JnVWIwb0JiZ2w3?=
 =?utf-8?B?U1QvaS9qNmhUcS9KQUVTZDJROXhRQUlUR1VRRlZzWGlXa0M2QVVqQytkbVY3?=
 =?utf-8?B?RkgwY1pnK0Niem16dkZKUEVqNFVxb3h6RW5PL3ByQ01uSWkxVk9Nc2ZQaDNp?=
 =?utf-8?B?SVNud2pHdmJyeTdBckg0RjVjTVF1YWZzK3VvM1c0QjVSTm51UkpBckVnNWo5?=
 =?utf-8?B?ckR1ckNYNTRNUkp2YXVVOWczY2pDOTErZWUwVlhzSVZUbjRSSWwrVXY5N2lV?=
 =?utf-8?B?SjBLdmEzQ0hpV2FWbmE5cUZGM0pRYlNjdU16WkxLZVhBUkJDVmlzRSt3UnpN?=
 =?utf-8?B?UEVFT20vVUw4aDZyWmpmdUVNOTR4ejJkMTdQM1NnRzY2U1dzdUtHa1ZlOE9m?=
 =?utf-8?B?aWV2VnlrbGpSSFFoTTBiazdnNSs1empBSVBqbFl0MjhpcGk3d0hxTHNjWTJh?=
 =?utf-8?B?STZIWS82SmxSZFFRRk9LRW03TUtaNndXSFBIa0dkMXFkOTk2SFA0QUlvZ1Jn?=
 =?utf-8?B?UGZJN0g0NVpqQytYSGhoQjhWSUJkVFBqaUtlbHVUdVVhc1hLbFFuNFM3UmVK?=
 =?utf-8?B?cVVSL0tGb2hsbXE5NHNGUlVhQU50Y0tDR092WGlpUWk3dUpMY1VXZDZ4d3lQ?=
 =?utf-8?Q?+Yf6XbhKPOpYJ6SpEl3Icqc=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6594b2a-eab2-45b2-00ee-08d9f2454a37
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 18:42:46.2200
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nJN3/gZ/t+9T/+TIHl/+AyxZ0aPltLuIUUyBzFl13cluiyMGBIEeHZ1iy6c7H7eXpd+JxF4SYjcTBnUdwKKTCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6238
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=i7qajzMf;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 194.104.111.102 as permitted sender)
 smtp.mailfrom=lduncan@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
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


Hi All:

There is an iscsi service that does nothing but create the 
initiatorname.iscsi file in /etc/iscsi if it does not yet exist called 
iscsi-init.service.

For iscsi boot situations, this service can run quite early, in the 
initrd image before the root pivot. Because of this the 
DefaultDependencies=no line was added, so it could run earlier. But 
because of this change, it can now run too early in the real root. The 
problem is that it can actually try to create the initiatorname.iscsi 
file before /etc/iscsi is writable! So it generates an error message, 
fails to create the initiator name, and it makes the rest of iscsi 
services fail, since they depend on iscsi-init.service.

In order to address this, I added this line to the service file:

 >
 >  [Unit]
 >  ...
 >  After=root.mount
 >

This was an error. I mean to wait for the root disc, not "/root". :( In 
testing, this just happened to work on my systems because we use btrfs 
by default for the root disc, and btrfs creates a "/root" subvolume 
(i.e. mount point).

The mount point target for the root mount is actually called "-.mount". 
But even adding this didn't fix my problem with iscsi-init running too 
early, and it's because iscsi-init was waiting for the root disc to be 
mounted, but it turns out it's mounted read-only for a short time, 
before it's remounted read/write. So it was getting an error trying to 
create the initiator name file.

Long story shorter, I consulted a systemd expert, and he suggested the 
following:

> [Unit]
> # this adds both Requires= and After=
> RequiresMountsFor=/etc/iscsi
> # systemd-remount-fs.service is optionally pulled in by
> # local-fs.target, don't start it here (no Wants=) but if it's
> # running wait for it to finish (After=)
> After=systemd-remount-fs.service

and, to keep iscsi-init.service from running before systemd-remote-fs is 
scheduled:

> [Install]
> # just to ensure being in same transaction with
> # systemd-remount-fs.service
> WantedBy=systemd-remount-fs.service

Testing has show this works on several different systems, but before I 
"fix" this again, I thought I'd ask for input, in case anyone has 
systemd insight I do not.

Suggestions? If I don't hear anything I'll go with the above 
recommendations.

If I can't figure this out my next suggestion is going to be doing away 
with this service. Once should not ever be in the situation where there 
is no initiator name, since that should be generated when the RPM is 
installed IMHO (which is what we do).
-- 
Lee Duncan

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d72a3055-5375-de38-d286-8e88fc6c9487%40suse.com.
