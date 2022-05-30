Return-Path: <open-iscsi+bncBD54HHNYIIILNZWTSQDBUBEOE7Y2Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 42810538638
	for <lists+open-iscsi@lfdr.de>; Mon, 30 May 2022 18:39:21 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id k16-20020a7bc310000000b0038e6cf00439sf7260677wmj.0
        for <lists+open-iscsi@lfdr.de>; Mon, 30 May 2022 09:39:21 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1653928760; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sr5C06ZvdG3y9EEOVxHw/W6h7P0QCbgyFFqAl2GJnlNmV72xFF3Grukm2hLVXNvmqp
         GpnrhQRJrN3I5P9IzicVCkTcb1wdjgN+YynjuJse8wNM0CVAR45epetdGUsaR+BjXmWk
         WBsVpQPrD3OCVoPTVfCrtbGgA6mxSTNCl6JNsjRxD5n+VNr9aVaT8CJDGBAkUMrNqtkJ
         7YUH928FIFbn7T5ieHbWb0EJWzCBSdraH3qhUpmuVXmRHmOU6Z1CFTJlgAWd7xdEoPLb
         Nlz0XCMCfY+sa7FdRD9hXTVVGrGpzNzLp5T15AFR+0xSy3s176lWJkwlqtgBjKjpgBrz
         2jbg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:dkim-signature;
        bh=ggr3G+1LnmPNI71GLqIxfxYZHnhCQcDIURbBHDF7npI=;
        b=oMygBPUe2vrTcgmqeAE7NDDZRROVTBaDx5ZLlJH8cIVH8Jf1FS9XQXqOGRVj3n8twD
         aHwabcqcDF2hmKyyI/q5M1AFMVm+hu7bNLremC3Ah6dbDgNqE5FKrmeTd42MENoUNCke
         dIipF5rzEAa7KgngF5q/5gPcXcKLNc3bnelOcVdAPsGSGxbdUZz5FqxrrESfGPbAFl2D
         492hoTCFqQ+G0xJ925pDJG9hKdKdk6OlPZadZTYOIUMqea7UgriKYhyAr74jXDezsMFB
         WLvH+aTz3NjX2lvpugfGdQK4RtBTQZmEPJa6ojGME1M+p2wGRQ5hzzkphRE0siUQMm+S
         sU5Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=KOWUo80T;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.111.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:user-agent:subject:content-language:to:references
         :from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ggr3G+1LnmPNI71GLqIxfxYZHnhCQcDIURbBHDF7npI=;
        b=e3KKshsibef1gGlKYVYG8WO4InFwxfMpjFNcM2/vW0KNxCv6/aZGZzjI0xwDs5PFMU
         H7SjBmhSOi282mpwM/1KvU6gsxY2jD+Apvhq7t7b2hhm4lUFoUHP06Zbfc6cRrSBv6R/
         yZpCZvMVy7lGoLsAsC8/i3Lc2jSAN3uO/OLhMvIIarvXf7aSe9MLbyYOG+XdX9iacxtH
         o+TdM0j+eWm3G+iNZYDX5FK+/V4toYEuGhS4diFbYyVqlHjl6f+nA8UkCnHEc/xkqOfJ
         zFek3TmnS2fiAjn6/cydh8QL4bes16WEUrt6ZqHDDpnk6nci70i/oP4yTHqg4W39lktG
         KXxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ggr3G+1LnmPNI71GLqIxfxYZHnhCQcDIURbBHDF7npI=;
        b=nce0I2emLCes/EOEZ4UICaCr3GnN28pAlYu0BFLKB4I+bhoBowuy0G8Csa9Q3HOooj
         N4K/XeG7Vfl+9bGfXDJmF9hnpSBiMHGl5mJbZmNeUfNdAwnOQ+fULTUZoSGIP/KTZgZR
         siLH32Wzg3yO5zNlLiteTjW5slvoIHVlqbUC94dLKEm4PFUtMaxbuHpwhcnZnjukojin
         uea85Rkl2L5z04s5Yv6E/JWvfd+PyQSX5MyufHBCumkbJUxIOPMiBRmTQjxjCC1/Atyv
         3iCD8TOoqCuh3wJikFZy0vvB+Nw0DHmibJEfgoO3P8ALOPTuOxkMS3SariKsijVl8zGj
         RyEA==
X-Gm-Message-State: AOAM5312EB9y6j1gFckZCi+KvnfIJStMqbUX3C50cRgfTFsA/ZzydzD0
	Hr/+0aNwtP1xQOUiWyoHk8Y=
X-Google-Smtp-Source: ABdhPJwRchPpTzS1MoKVggjb9qo0IafuURJIhvkzMtcg1mkZ2WqSYVMu6KDZKbI8eZY9e62cA7P+YQ==
X-Received: by 2002:a05:6000:1611:b0:210:28cc:65dd with SMTP id u17-20020a056000161100b0021028cc65ddmr9661514wrb.700.1653928760668;
        Mon, 30 May 2022 09:39:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:4e1a:0:b0:39b:6b:f2fe with SMTP id g26-20020a1c4e1a000000b0039b006bf2fels2263939wmh.2.canary-gmail;
 Mon, 30 May 2022 09:39:18 -0700 (PDT)
X-Received: by 2002:a05:600c:2d86:b0:397:4743:5d25 with SMTP id i6-20020a05600c2d8600b0039747435d25mr19439952wmg.11.1653928758136;
        Mon, 30 May 2022 09:39:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1653928758; cv=pass;
        d=google.com; s=arc-20160816;
        b=hALDE23pKpgGp0YgBK3iXPxQcPCT8AD/kDdZk+w+xo5pAyMQ6m3MVxuN7oIW2KnvuH
         5kzwBnOnDmrLo5XM9CkxiY1PYTNrJGomHl/NEo32RID5WGkSKp/GsZphH7beiewgk9XP
         hVlo+zE7ZiqlOsGfmIDbkuY3j4NIDNct3UZfW6lhwGmn9NtLMxIQ3bX481zpxFRZztsD
         tDma+VdhOn26dpm/+xAyAPyBd3UvjlSOt9tgfECyuXqec5W4M3x1Ud/+dMTZXAueMmTv
         z7XCX43Rc4ynVrVQtWw16vhG/1AiG5CCL6cV6+EB+MhKT6eJ7INl6BH/vd/u+oEy7Bcg
         i4eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=lo8rrvOFCtoWmbh4QQ7mgPpYWqpf7GRnNq5Zq0a8Sjo=;
        b=tlBzFmLt9jQGpL92nL7iMIwoGzURtKC0bbfdfyM/TJSI2otfrWAbTk5X4QzPHjvF2p
         W7zIyHVTq+15GM2J0XtHBLOFRM1uxTd8yeBUwOgFkDfbe18U7q4nJ0zMnePG/+gVX6x7
         iGKZu3ZlwuWcU57y7zT6E1qJTNzMmltAQs2dQItPaxVSFWUIk4jqzBVh/DhUe7oW9m+T
         JYLMbm1PwncseWMWHjGWqPY+DzUvo7aLPzl5RFCOZGpNN78wyOCk9hiz/73VOzGtwluK
         3CAujb4ScYf74sGr2l5U9lRqRUd3RK1diN2IjVsD+EEkVbDE2Sn51frrFcrxHvl6706j
         x/uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=KOWUo80T;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.111.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [194.104.111.102])
        by gmr-mx.google.com with ESMTPS id f3-20020adff8c3000000b0020d02df3017si374730wrq.6.2022.05.30.09.39.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 May 2022 09:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 194.104.111.102 as permitted sender) client-ip=194.104.111.102;
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2054.outbound.protection.outlook.com [104.47.9.54]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-38-L5f0fecoM4213Lkw-XwzOw-1; Mon, 30 May 2022 18:39:16 +0200
X-MC-Unique: L5f0fecoM4213Lkw-XwzOw-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=REi6Ue1A3Jg+yQoIQNhDofte+REXafl+llUZgomQITiPFspFPdQ+B/QiS5GdLBax/BCwnP2lQu+W+yUhxe5Tx7NIrfTjm2cId/ZnOyby9AMpAtjf+EVmL6zAkJHqcWS5AqiKlJ85KYN7T0NS6Y++FpT0+gVrtbwoZ5gg9bUXkbaGWNqKjkIw6kEZEatppZ41pZxv8U3+R9sIcRFF712DECvgsYEZxO8hc85aalIrKdvSFcLSX7CXvOU6sQp44Zo9p+61fmm2fn67XjtpYT0pSTxjxyCSRjb22u3dZe9QaZcFGGQ0J66XCcLobl3xrB3wYWR8z/5kb++tpLl6c71oWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lo8rrvOFCtoWmbh4QQ7mgPpYWqpf7GRnNq5Zq0a8Sjo=;
 b=mkr3WEfPD1KBcE5hMoKZ+K+fXQl69RnucmqdPEgZfHi3JU/UA3CJxBZw4e6WDFh5l7CLa+VTBG+GpIvfPeQv2WSvAm8WbEbKS2xCkLA0zws1pGUJ3JWseQyCEPp/Ayw20UJKgDk4CW6ZIidhKG2TLF3Uz5PhNqA6qEhmjb9zD+CneAAOJF9T3oy6Fb/jwiWRPvOHlIA58v2x/12x8upehWr++PhqqblqSk6bjenI7oJivzL/spJoBQIj3gtDGj5DGxXh7qm5aaRFjgf511FiWnHPxLdFVBSficBcyKSMlHhbYK9jy9ziFQmlJxkoqg1Ob2c45wwPM2/XfeoelQyDWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM7PR04MB7189.eurprd04.prod.outlook.com (2603:10a6:20b:116::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.19; Mon, 30 May
 2022 16:39:15 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::c49a:9069:bf85:6d47]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::c49a:9069:bf85:6d47%7]) with mapi id 15.20.5293.019; Mon, 30 May 2022
 16:39:15 +0000
Message-ID: <e49b3faa-cdac-3e57-4a7f-be2a899ec2af@suse.com>
Date: Mon, 30 May 2022 09:39:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] drivers: scsi: Directly use ida_alloc()/free()
Content-Language: en-US
To: keliu <liuke94@huawei.com>, jejb@linux.ibm.com,
 martin.petersen@oracle.com, cleech@redhat.com, michael.christie@oracle.com,
 linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
 open-iscsi@googlegroups.com
References: <20220527083049.2552526-1-liuke94@huawei.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20220527083049.2552526-1-liuke94@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: AM6PR0502CA0042.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::19) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9306a4b2-612b-488f-2e7c-08da425aeede
X-MS-TrafficTypeDiagnostic: AM7PR04MB7189:EE_
X-Microsoft-Antispam-PRVS: <AM7PR04MB718920CF01A93D8C9A12D850DADD9@AM7PR04MB7189.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LsbFcBT4Ne35KOa42oV+48nVeazDZ9lZ4Ylv5S3dY8kAzRI8aj73XJY30xs/eXqlWhoD1Yi9tYtL+qXZV+TAN2p17HskYpA67RWAI/AjI9Dcouf7sh6M13cRrVPtJP8DB3543jM+sREfap7A052Px2BrLAjBcnGaoB5wEaFgCHYQm+RxsXJgvUWsBFY/6QzdyjqjbCSie5XcwAJC4bpg23xfwQH3hm2EF+u9R077O5RA5UfgbL/ONE4XC5yc9BgJ/VKPe+BVg4AVLIg7Gtpc/Th/e1FsmdLlXvSO8RIF1K7OV8g84YmsmwSKX2SXIXsa7NNGEerPds72brXNmkHg5tt1qdEJkFMIK4vYaY2xleJsyTwOUBT3wz61gR8dqa6hlcawKZ6hIOCTEWF6Sb9HHwsZSvVrc9/NxDkndGZt0HthSxVRPETJclogWM89ZDceZnHmtMtkgHedVjS5TD+0PuHhsfCYr1Vd8DEcVNRHVG11zQ6ob6MnkxZ+ewNzsF7oBJKDD73/V6gR4CgFdb8Xx2pPXpsw5FheQxu0Z74LZ7DUz/PiW3w0geUqjMgkomqOCPyyrqzjUd5AjSFi1+UmK8YGcTZawgM3X/ZV4ht2RxVHug+3nCjI23OuzuhzSeU/5KJdMrJkvaCvtIu4yVDbnFLb1cCdb+If9+a0eTWW50ZNtTf6mVMGscEE3jZ6e2cmwT7PUVfBsiXeBSNkPUlP2wxyA1I7U6Ich/FnTHtQYd4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(508600001)(66946007)(66476007)(66556008)(8676002)(6486002)(31696002)(186003)(86362001)(8936002)(83380400001)(26005)(6512007)(38100700002)(2616005)(6506007)(53546011)(6666004)(2906002)(31686004)(36756003)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tzk5WUZFUWdlSmNad3VabHpJUWIrdWx4OEw5RCsyYTlEZTU2ZG9qTzlVSmdT?=
 =?utf-8?B?dHRhbXRic0s0WHIwRnhKQ0pSTFdwemxON2REZVFpZmtQNUtNSXhVR0g5dGJD?=
 =?utf-8?B?S2YvWWsvZmJNd0kzQTNBaE4yYWI1QVBHMTBmS0FCd2tlRk1iak82aWs0UnlH?=
 =?utf-8?B?QVdNdk15ZCtabndsRzBnRkpsaXBaUXZ1V3BOSElILy9mWFg5VzkrK1hsc3ow?=
 =?utf-8?B?OWdGUDdqdUFLOHVmTXkybmVaaDBjWW9hRXBLRE1lM1FIMkVUbjFtMGlQU2dX?=
 =?utf-8?B?WWRQdlA4OVJiM0ErRTN4ZWlKVTF2T1duUFkrUEI2OEw0ZVRkK2Y1Nk5hVEpx?=
 =?utf-8?B?Q1UwRkg1eTgxTWE5RG9mVVV6eTNueXAzcGtZUjFzMDErK3JkOEhzUE5rMExG?=
 =?utf-8?B?bGZXbHRHL0JNRFR4bFpDZjBLY2U0ZGRPaGpzMDd2cEpOWmpUSlk3U3JaVzhm?=
 =?utf-8?B?dm1TbXp5L2JQYzNPay9UU2RhSWcxNkZhWlNvT1hqbnlqNWdDaDU0UjhiSkJ6?=
 =?utf-8?B?TEMydnBtb0tjeWJRRWFMYTZ6REJXcU9jUVBiTjF2QW1jME92cTZiR1Radmtq?=
 =?utf-8?B?R0txbmZWbjN3dmY1RkE1ek42bmRBa1kyRFV6a21sTnk5RkkxTVZXRkNKMUVm?=
 =?utf-8?B?bXFtcUw2R0pRT1VHeTlrTHYvckd1b0RKZ2hiQjR5MmRlaFRmcEYxM2dyczJk?=
 =?utf-8?B?VXZXTVJ3akdzQVNkVEM1TFRRV2hZeEpsVmdlbGhEejVFYnE3R2Q5cmk5c1hZ?=
 =?utf-8?B?U3ZNTTdhb1JDek15N0dmSTEzL2dhb05jcTZwNlI2bm1SMFVGOVdzejlwV3da?=
 =?utf-8?B?MjBoa0UzeFFWakJtb1RONzliWTNYRDUweGNxSU9PZHpNRml4MkNyR25Kemlz?=
 =?utf-8?B?TlpURUN2SENxZHBZMnBzNmtKQk5jOVcwWjZ5cERQWVBNQXlaSHhveUVMZW10?=
 =?utf-8?B?UVBkT2lRSWY0QkZwOTFhTnNVVEthZkF0WUY1WVdNSjZTNnFZZE04dU5DVEYw?=
 =?utf-8?B?SWlibjh5cFpKZC9wT2ladTR1SjFMVTk4SW94d0phc3o4ZXI0Z2l2UVprSWtR?=
 =?utf-8?B?b2dDVXYxZk1MYlg5MlNRcUI2TU9RdW9pNkJMSldnQmxjVjVBTzBFdTFRZVVO?=
 =?utf-8?B?S3NRTkJ0MWVkRGJza3d3azllbmE5bERQcjlxQkx6ZWF3aTdQdDJ3Wkx6alhF?=
 =?utf-8?B?K2lsdW96ZlhFb3N3RDFBVTM4N3dUaGNkdHFmYjg2U3EvSWZ0K0FuUFlBclFN?=
 =?utf-8?B?YnBFdjFyeVhOLyt1cm16RmxCSGMwR1lvUmc0OGYzcHl3Wm12anBWdDlWU0JF?=
 =?utf-8?B?VS9lOHFMemxWSExJb2JrdllwTk1GV0dJT0M2ZllWVlBVUzdmRklDY2Y1cWtW?=
 =?utf-8?B?SnNPRFJ3ZmlIamdaL1dvSHRqOVpVRUpXeWpQMWNRMkUwWEVXTFJ5eFRnUERV?=
 =?utf-8?B?azRGazFZUUlZOVRDckdtaVVKQmNOc0ppcWJCT09vemZPZ09ZeUdwRTdseXZ0?=
 =?utf-8?B?TnQ5UzV3V1M3c3RPbVVOeFRUYWJsZ1Z0Z2g5K0tjYlNEMXYyL3Q3Q1hxUWhn?=
 =?utf-8?B?K2c2d1dTWklaTkZjWE9qOFhqb0YxaDJWcXF1bFAwNmZuNVR0cW1SdHJGdFRs?=
 =?utf-8?B?eDI0eTJPNnNiOFd3dU5lS2tHeUdIdDl2OVVZSXNxRkdTWHZrK1ZDeTE0eTBZ?=
 =?utf-8?B?NTV3cVhOSUR6TVhCeHQ3aU4yMnBsVU82cGQ3bXFXOHRmVlhrRXRtbiszWlp5?=
 =?utf-8?B?WlR3TXppTlV2Vk9ycVc3M3p0S3ZlZ3lPVHF6OVdSUGEyQjZlczgwNHNuQUUw?=
 =?utf-8?B?czR5d0VsNUxGcVlubXdlcWc1alZYb0kyZVZRczByMWVNS2loTlNoSWF2NzJu?=
 =?utf-8?B?TGNWREhZV0hJNndUN093ZmhVUWpyU0RoSWNEMlRhWTBIbk9ZVk91KzZicnlV?=
 =?utf-8?B?cW1Sd3N0MkZFdm1EVGUrQmpwUjJyeFQxV29CWEJDNmxnT2tZdWdPSUdEWEtl?=
 =?utf-8?B?YVpzSHRkYmI2SU9GUEpLR1RESzkrWDJVbGJWRnBjbkJBd3lIbk1QaWJQaE41?=
 =?utf-8?B?bGpFcU1qZUNJajRVNktyVmxSclVwcjN1OTQveXh5aVVLU1VDV2JLek5UNU9P?=
 =?utf-8?B?ZWhLVGZiWXdrMW9peUZLa1NHUUpCbGw2Qk1oUmdPaHZleWlLZ2JMMnNEWVBp?=
 =?utf-8?B?MmFXN3dleEJVVzBodjIxM2hiVVdIS1c0YzI3TGYzcENCem4yM2RsMXBBeE9j?=
 =?utf-8?B?TXIyd24vRHI2WTVvdUdDcEZsMjB1NGVkUzIwazZnVGhGdkJCVDV0ZDYwUnNV?=
 =?utf-8?B?bVAxZlBnb0RTd1hRdFpmaFp0amdpeVhmbmhMTmFrZjR1R0toSGp6dz09?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9306a4b2-612b-488f-2e7c-08da425aeede
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2022 16:39:15.0718
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZZL+pQLwL69VYj5C9iwBsraSkYAHl1SjuZ6dPD+MbQlmJGNGX4VkCNCVPkZVogDytL0sGHrg7Jxd3FEugEdibw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7189
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=KOWUo80T;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 194.104.111.102 as permitted sender)
 smtp.mailfrom=lduncan@suse.com;       dmarc=pass (p=QUARANTINE sp=QUARANTINE
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

On 5/27/22 01:30, keliu wrote:
> Use ida_alloc()/ida_free() instead of deprecated
> ida_simple_get()/ida_simple_remove() .
> 
> Signed-off-by: keliu <liuke94@huawei.com>
> ---
>   drivers/scsi/hosts.c                | 4 ++--
>   drivers/scsi/scsi_transport_iscsi.c | 6 +++---
>   2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
> index f69b77cbf538..ec16cfad034e 100644
> --- a/drivers/scsi/hosts.c
> +++ b/drivers/scsi/hosts.c
> @@ -350,7 +350,7 @@ static void scsi_host_dev_release(struct device *dev)
>   
>   	kfree(shost->shost_data);
>   
> -	ida_simple_remove(&host_index_ida, shost->host_no);
> +	ida_free(&host_index_ida, shost->host_no);
>   
>   	if (shost->shost_state != SHOST_CREATED)
>   		put_device(parent);
> @@ -395,7 +395,7 @@ struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *sht, int privsize)
>   	init_waitqueue_head(&shost->host_wait);
>   	mutex_init(&shost->scan_mutex);
>   
> -	index = ida_simple_get(&host_index_ida, 0, 0, GFP_KERNEL);
> +	index = ida_alloc(&host_index_ida, GFP_KERNEL);
>   	if (index < 0) {
>   		kfree(shost);
>   		return NULL;
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 2c0dd64159b0..2578db4c095d 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -1975,7 +1975,7 @@ static void __iscsi_unbind_session(struct work_struct *work)
>   	scsi_remove_target(&session->dev);
>   
>   	if (session->ida_used)
> -		ida_simple_remove(&iscsi_sess_ida, target_id);
> +		ida_free(&iscsi_sess_ida, target_id);
>   
>   unbind_session_exit:
>   	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
> @@ -2044,7 +2044,7 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
>   		return -ENOMEM;
>   
>   	if (target_id == ISCSI_MAX_TARGET) {
> -		id = ida_simple_get(&iscsi_sess_ida, 0, 0, GFP_KERNEL);
> +		id = ida_alloc(&iscsi_sess_ida, GFP_KERNEL);
>   
>   		if (id < 0) {
>   			iscsi_cls_session_printk(KERN_ERR, session,
> @@ -2083,7 +2083,7 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
>   	device_del(&session->dev);
>   release_ida:
>   	if (session->ida_used)
> -		ida_simple_remove(&iscsi_sess_ida, session->target_id);
> +		ida_free(&iscsi_sess_ida, session->target_id);
>   destroy_wq:
>   	destroy_workqueue(session->workq);
>   	return err;

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e49b3faa-cdac-3e57-4a7f-be2a899ec2af%40suse.com.
