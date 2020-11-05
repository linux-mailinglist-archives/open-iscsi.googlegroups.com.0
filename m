Return-Path: <open-iscsi+bncBD54HHNYIIINBXMQ7UCRUBBLIE7S2@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C4E2A841E
	for <lists+open-iscsi@lfdr.de>; Thu,  5 Nov 2020 17:56:49 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id v125sf854127lfa.21
        for <lists+open-iscsi@lfdr.de>; Thu, 05 Nov 2020 08:56:49 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1604595409; cv=pass;
        d=google.com; s=arc-20160816;
        b=s5qjIvyUkBA45hj2DA7Pt4qg1UK4LCsDocYYnmzTrze4mRPQno8vng6/vGL3dkkcjJ
         6vhUaCyUkQ8QkMc0e+j8a9/0F7ZUzNXuGWFVYcemvLc4lTF0YYOpRVCxk/rpnbR/y5dY
         q0+wu7nzoRgqo/pIDP/PdZQ4AICt61O4egalCdYkG0gP2Oz39n3NUSaTBN7DUAKGmm2b
         bZ/Oe4BOtU1vMyv+SiX+fF7FofgoenXqX/bgjJf8Zzmq7y496yqnEoJBj8spYNAiSxmV
         6p+Fpsb2MHtUZeg5rLuFKgAW4J6XXa0fWIqC8fkIHNVyzN377VSZItM/duXBKy2JQkXe
         vqCw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:autocrypt
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=UV+/S5/l/gWOal4xVQ5pfD1phqc6scJu1pKYpwFu4yc=;
        b=aQvdCVYDnhJ9xj0XbXwsa+SbmyAABTXLSk6ajduTPH2D6hpv1RsVEL666hVYX/ZShM
         vvDuIOuvHYtBhtWtOnaNptGKPkZPJB4Gd56nQ1Lx28sqVlzlzDQSH7O8MXt+Z2/10H33
         5PQS6ZkV8eJqPEa0tzN5Y4F3pAX3fp5Vrh2x//zKOuNqdsptheMoAVDrRlCfFIWOHt7E
         dhKsS8YF0FmphQCth2OnzcrLvRNK9Qsf/NvZ9wtC7F3oqdG/bQVeg+KRd8CVxZELBZzv
         RsCpYzy2uILTODk0qpjvN7+Xkw564FscM2EfyvBplk0uiezS/1Z/rX7NGanbIDygkRze
         EYfw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=VQUhsds4;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 62.140.7.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UV+/S5/l/gWOal4xVQ5pfD1phqc6scJu1pKYpwFu4yc=;
        b=Nazmu0wrLbQOLjmNIsqP+/tJiwt3+y451LP3e02NBrxaESMDyKrusUsykOf+0wuF8S
         X1aNMsujDYsVMS3jHepkFhKF4MnhCeRDyoaK6hOEBrwNiSO7x4CjVEQg4eeKBstHwO7y
         /ocw3asijGR3WqngpTYVSY4cbc/IFDfd2mmHg4pz8tNe2R4eLXRc24tq0KwAIoVjP4aR
         5SCf+ZW27gMXChhl8JCTy9IUNx6m1nyAD9JSP5UzbTkZO6X7doVhuilS2wfmzyX0XpOq
         lPtCTtbB19lJ2w5MB46rVVCLJMucLVxLyva3Tb/x4g0fGhv/ISYA3EOtznuQCdnrG69n
         7QPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:in-reply-to:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UV+/S5/l/gWOal4xVQ5pfD1phqc6scJu1pKYpwFu4yc=;
        b=YFmM72ol3DfTD2gUjyyeyfS2AWRifAqwjiaFr46ohGYP3UkV+s0voRzDaoTROHkc0C
         T0eSMEwwyf8y63aTKyBHdNSL37Rddo1gXSLyppmiPaN67XbliBuouPrmnlYC7qYgTZ2s
         ZlBCBKx8V03EIFcRbTKbLQ5C53HHeA8NEbMIbcKqvxi1NTVoH1OPrgRHAN6oYJ/W4C9r
         dl6uq5RkLN1fUI+FDUTtFmnCA5QTNybUCElfk7TXGE+mhl50wIllCMB/J/Eg5vJkA023
         mMnKmUUY/4UR6ZySPyW5AA+H25eveYXGFYOLaK0ymvwvRxkqtdWIxH2pwk8bYoZbw+52
         J5mg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530jk5d/UAeZV/HPRtQGzBRAXRNDq/fR2OZMIhlbRU19zsHmQkNn
	/tGvKfOfi9v/9F5iGHw0Pzs=
X-Google-Smtp-Source: ABdhPJy0PxuGRerrzGs/PDJQtNac04LzCIyo6w7JFCVfaTWkO8Fxh5wYg344AHPmp1qtfmd9rcwSrA==
X-Received: by 2002:ac2:5f56:: with SMTP id 22mr1521387lfz.136.1604595409388;
        Thu, 05 Nov 2020 08:56:49 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:586:: with SMTP id 128ls1595782lff.1.gmail; Thu, 05 Nov
 2020 08:56:48 -0800 (PST)
X-Received: by 2002:a19:f50a:: with SMTP id j10mr1469453lfb.252.1604595407981;
        Thu, 05 Nov 2020 08:56:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604595407; cv=pass;
        d=google.com; s=arc-20160816;
        b=n8dFLV9IVHakxGzF2TMEGbpbqRaKGrMzfOrF5Dq7VRp5Ok6v3fYXsaPCV4m4ejkjry
         yBlUWXpuds8Dp9ipq5Rnk3igvK32mjqmheDDcExydL+YLiaEbiEm4M7kRsJMcJknbRnk
         TWGAeDV21/DQZVFgQoFSxeAHJ0A1jbatB3bN0rclNaacD25HUUZ1VRpCcyClLOA2mfPU
         t5Y86UGohw9ypPt2ZxXJHRXSBv/wBVAGVMu4+C3XXdBtVrd/JbD1TZKqs9mGKw8xCPiJ
         WGshQabhHrci/69zogrbH28hAGwpkIn0UskqtnQmkYGQep04uhZWPAmKNY9zHVj9R7HN
         qHKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=/FzfupCnyP9cuj9s8MX1EhCh7o1KeONKC7JKi6KLZN0=;
        b=nbAvG6e7ZJJqvoVnXgp28VvBPW8KRIeHjPWGWDYlkreXzcBdFT0Y9U2QwjJUOq3Bku
         0B1phO41qYsE9EyEzJZCBLarG3PNqS1rVSxXLOQVkPrvy+Gv6Z2SyJi+pD1Txeq1+NyL
         NTZpYjUyZmR7VVmUOdSyRZXC1yNTdt/QxBCtfzW4cUS0ocvbCjsFcw7vNh4xw1qpqvBQ
         SUwywVMsVYy7qpzHmQ2FbuOXTr3u13ivjuTVe0I/2PrhFZaiazhFYjfGFt3bdLrbnbwr
         3WmUZhsIf7SCejDKAftsdWMEz0FYf2sTEEuYGpefN5iw405+xj8EShaeSFDQLnC3FHPh
         j5rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=VQUhsds4;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 62.140.7.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [62.140.7.102])
        by gmr-mx.google.com with ESMTPS id v24si78802lfo.5.2020.11.05.08.56.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2020 08:56:47 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 62.140.7.102 as permitted sender) client-ip=62.140.7.102;
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur03lp2051.outbound.protection.outlook.com [104.47.10.51]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-40-9R4UAGgWOymxiKsn6Vwv_Q-1; Thu, 05 Nov 2020 17:56:46 +0100
X-MC-Unique: 9R4UAGgWOymxiKsn6Vwv_Q-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ApQ+kxA6WdsrH3VJgk0rnepUB1fEQv65VzX5acXvrthy89QkXJXdaGXLduNCQvwHb0eqEvFryPmU0nLy1stT13IKbzTYz10JfhswBF2EmsBX5Ux6fgIDcqFqz0VpoOEb1/s6OyZVJ8fLpHGP2LN7AHGyP8CfRPHIaULxZG9ycgaTzzS8b413oAtdonPZu2kd7H51I60EsC0GsRG1bXBT6MdaCbZYgJzAKXmngrs55pInP+K3h1Bcx9IiUZii8f+v1TYTu3fwWrlLUU3v5VZsTBkQvJvFFFR3tnxao+JGc9rwfrkYTweo8m++FCroUNgtpw8F2vjd9St6iAUbZCgVjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/FzfupCnyP9cuj9s8MX1EhCh7o1KeONKC7JKi6KLZN0=;
 b=eDQniD7dnzkneHzFTnfgmcod/GknnkExfVLTiD96qLyhbQXla39hQBIMvwF6xz/w7qurWKCEB1hnBA7LKHBDOpUQ5+PVcRINHI8wTH4ZqxW5UmE6dmMVROkhXafkPcQg5T6jtq29kxiXwCxnl25yHQUA87VRR0jn0YIowg0jZP7HT9J+w4ySdVF1+Qn4z7Srw7T2jbTkESM3tZnhJdOjLvtF9bQVk5eMsG1i1AZsFxSohxYh4rKkMYZYcRIl3MK1XClR9bxUsNKJkVJW3YyNaFUJVWznk8dCxtQvFsAVzpv8SmhZ3LCFumh0b6uZkAlp0mULR7xD9xN/qCJiei+8ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM6PR04MB4616.eurprd04.prod.outlook.com (2603:10a6:20b:1e::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.27; Thu, 5 Nov
 2020 16:56:45 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952%7]) with mapi id 15.20.3499.032; Thu, 5 Nov 2020
 16:56:44 +0000
Subject: Re: [PATCH] open-iscsi: Fix memory leak in sysfs_get_str
To: Wenchao Hao <haowenchao@huawei.com>, open-iscsi@googlegroups.com
Cc: Wu Bo <wubo40@huawei.com>, linfeilong@huawei.com, rose.chen@huawei.com
References: <20201105025925.29822-1-haowenchao@huawei.com>
From: Lee Duncan <lduncan@suse.com>
Autocrypt: addr=lduncan@suse.com; keydata=
 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
 Xd8p+B+giaT8a1b5hWuz85V0
Message-ID: <802c3a31-3c66-0947-31b1-df610196c5ac@suse.com>
Date: Thu, 5 Nov 2020 08:56:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <20201105025925.29822-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [73.25.22.216]
X-ClientProxiedBy: AM0PR08CA0017.eurprd08.prod.outlook.com
 (2603:10a6:208:d2::30) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by AM0PR08CA0017.eurprd08.prod.outlook.com (2603:10a6:208:d2::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21 via Frontend Transport; Thu, 5 Nov 2020 16:56:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 58081e15-8f5c-4f6f-c299-08d881abc6af
X-MS-TrafficTypeDiagnostic: AM6PR04MB4616:
X-Microsoft-Antispam-PRVS: <AM6PR04MB4616B297308A10CCB992B45FDAEE0@AM6PR04MB4616.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:949;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r1aIRdPjlElha6yczIHbZ8IA9+DWVFu1NRFTRdS9OLp++N6FcnkrPfepNR2NyAT2hINogkw8RKX71z715sVB96h01bP3p9hxW1GhLcoZQFPmf6ZLa53FLphzOUPMrNljZV2DbSKsZRgvHX4yHBwpm7FPse3Vzro4X95aYPkWXntPAXJIpNXdQboKiL+1p+CmkZxsMLw/5WVQK8fbtmLj8GbpuQ7ZB67S2jKACIjNoNXpV3I/FzwORfJgVp17RpATpxy/EJlNOQ2EpwmKSSkqbC7AE77G+XcvfPUOXwBTZbecbO1sxFH2x3KmCME33jrHyFiHMrtHs4MTVSn6FU24UyAZAS0JkyATL4ddVqLKtpTC3/ixbKBr/UITCzD2gCdq
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(5660300002)(4326008)(2906002)(31686004)(86362001)(31696002)(2616005)(52116002)(316002)(4744005)(36756003)(478600001)(956004)(8936002)(66946007)(186003)(6666004)(66556008)(16526019)(26005)(53546011)(83380400001)(16576012)(6486002)(8676002)(66476007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: XAB04v9qy/u5bUuFRa3fiBqIKYMZ8IDwM/atEFACiiYLyNk8Mmw/2aRtMUKnss8Z71GfgHKbq1p5owhyzcEeWjxFebRBJJ/7jC8n3szz9H7raamVFnTIRsxtNQb5fr8TWlXN123Yvv8NXU3D/JVlGUiHAA/MvAZSJcs4ti1kcCwt2o/CG8O3pGx+nCksGreaBsfU4XyHoee7jEQF/Y3H306fH9sZEZBCS5I2fO1+qT1ymVFOO4LLADC24jxVRDJuVzYu1dGubUm8IioQEqZoF3xHulOvm6pIOwpzdGBjpxLSBsz7iO2YTz9/b3t14Rz7m8zOTHfPqFLFe3fmzgXz/yEJANedj7P/7EV6HYPAzwdfI9HOmninwk7g1j1MK5Lnaa4HdPNu2m3V+SNYiyV914lElaBc9udS6ykQHfJcE89VhoNqcX1YiQGIHv3NM4g8tGOEs2z9AjhjMMOBSrLgpOfoBSsq0apZHpqCFKES1D6qokS7Ey0NKzZP+WdQDRF7yvkSueliwrAY1ZJG+DfKlhSn7iySg0BJvbHknOZ4gE6p75MZZauRg9P+/WpM/8GcHXzQhlANIOWm3KBI52R0uxYB3rr+yvYNOgbGG8MlOuEWDnKwgqRX4UOHYPV5UTMx6Uvha30UKflciubSlTy6hg==
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58081e15-8f5c-4f6f-c299-08d881abc6af
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2020 16:56:44.9271
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ffYtvpQ7JI2FgW3ARDuePD39JwU4OduLwS3DIFPx009HpNNgkNY9Bx4idMLz/LsOu118mvNG42WIkynICF6LnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4616
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=VQUhsds4;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 62.140.7.102 as permitted sender)
 smtp.mailfrom=lduncan@suse.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
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

On 11/4/20 6:59 PM, Wenchao Hao wrote:
> strlen(sysfs_value) return 0 do not mean sysfs_value
> is NULL and this memory should be freed
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> ---
>  usr/sysfs.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/usr/sysfs.c b/usr/sysfs.c
> index 2488160..8d37c69 100644
> --- a/usr/sysfs.c
> +++ b/usr/sysfs.c
> @@ -574,8 +574,12 @@ int sysfs_get_str(char *id, char *subsys, char *param, char *value,
>  
>  	value[0] = '\0';
>  	sysfs_value = sysfs_get_value(id, subsys, param);
> -	if (!sysfs_value || !strlen(sysfs_value))
> +	if (!sysfs_value)
> +		return EIO;
> +	if (!strlen(sysfs_value)) {
> +		free(sysfs_value);
>  		return EIO;
> +	}
>  
>  	len = strlen(sysfs_value);
>  	if (len && (sysfs_value[len - 1] == '\n'))
> 

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/802c3a31-3c66-0947-31b1-df610196c5ac%40suse.com.
