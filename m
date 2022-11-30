Return-Path: <open-iscsi+bncBD54HHNYIIIND2M6TQDBUBEZRAHHQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id A850563E10C
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Nov 2022 20:53:56 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id n26-20020a2e721a000000b002793cf07a6dsf4200575ljc.19
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Nov 2022 11:53:56 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669838036; cv=pass;
        d=google.com; s=arc-20160816;
        b=A9EDWTdgPMWM5WocdCnoDQzFNBdRrT590A+68GUYK0EJhiTTWnOZbq2v8e7BMbOWgh
         BUhy+yKP7TI4yol9KkjQm3E09tdzcBfRrjorkX2M4dDmHHJLp6J8sLIAIjePDumGpOeq
         JSCOVrUgoNxFevpSlcqWTPGOkPljNc0jrSu+Epr0qwPwyAQR4moAZ6emU02yCD9fapyt
         B0R7TMWXgwLDKhJuEPwBhtp1KTEspLLlmKJRjuRYREDlMhx35A90foEUtL/tYOaWxSIW
         NPuR1ZVZBnOC+H8tmnJr7LAZ/0rZcj7GTyGZc4uQxRSwALsLdQUQwzuzGlTFzlQWa556
         6fdQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:dkim-signature;
        bh=b9bx+Ij5IP2/CCA70aqx1a4CpllF09EV5NdzJIHOcTc=;
        b=1J08gy8EEAOLxiERPg24z7gsug6k6kUJvyR4tkxr7qs633yQXzg1GLcVvFm9QuF92d
         egoWElldrKcJyur89f/5ypJ4HN6gdyyr0VUERzQwm3YkoT2XeOh+BckWuVWZwpfkRTml
         RugVYbW5+iGLtQffN5W1+w0Yt+gwbNE/ywTru+R3kjwb91z1ZSV79PXM6VYTitomF1b1
         4WoNRVCp39/qrjZuPZQ17DjE7e+0K4Biix8Gw22T+UhDFLNAhIJ1HZKyXMhfKZs21EVm
         dCYtExROyNbcMZMja6ys02e2NtYlqWomzdTt8c6dklZn0D3qD5WG3zRi2ZD5uwXVAb/M
         f0nw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=ahhbb6zz;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:7e1a::618 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b9bx+Ij5IP2/CCA70aqx1a4CpllF09EV5NdzJIHOcTc=;
        b=N451FMQQZAm43Z5gC1GAMmvznoU1ik07zyEmQs56OAwQz/snWY9bmjZ4Sn8xDoJKr5
         qbf5FSHI6FPesr0asE2p3eYhRFej3AMpdcORkpe9NZUYknK7qVaDOYtMxPMlwB7GgGee
         N1bQ1S/knA3n+492JFtcqnXj7PaG9CnGFYBAfYu8eI4JkwoNbCUGA7F4n6zcw2Bqm+kk
         DKpGdeVrxw5UK43xPiNvowYsW/6mNsH/5xctZ2LkCl4tVP+2RtiQKuBu25U2R3liCNq8
         WVz/nAd7OLQwn31ThkfMrepfgTK7S7T47T3kM3nuEmVtQ/Aewno4r+ukftfigOBmjM97
         Q1GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=b9bx+Ij5IP2/CCA70aqx1a4CpllF09EV5NdzJIHOcTc=;
        b=UfT0wYuQnHGIn2Hr4lNCqFFlwBtfo9wIK16bb1W8d6DbKIL62k6VtExCHaGEFDMBg6
         yAxPfBRib+4VenZSPVg76XF8N1qEIkke5xsPQ9kjPhr+OxCKkTQubRsfvlw3GfSzLkz2
         LM3A0QbbVQRKiBVIDf0F+RK8Zd7qC73kekBBpp86gW2RWS99KVAQxkS5oRD+kL70bnUE
         IciidEqqWlRkSEBhjCvFbd73f8JX6fa01xnbkAs6UyShihHzm9nHnZ/PJYxHbWOFijWA
         9fzdXjAw/v0MNAtY6+M0EZoNUcYppXVIFrVcVvGvIxFyTdEsstKYBYapO/NH82ncAajk
         0npQ==
X-Gm-Message-State: ANoB5pk+iHkcWRUr5ZEodMLhP8KDyWE4BvQ8MZljvZUoBB9Tv6GjQ2/V
	v75kMJ8xqZy3XW6JEJn89Ok=
X-Google-Smtp-Source: AA0mqf43GWcDYsG3HjlabwWnt44ncahp9fJNsvsSOcdCmMZxT5mADK5OrSarWcxnxa5rhzKQ/C5Zug==
X-Received: by 2002:a05:6512:3189:b0:4b4:e3bd:6ca0 with SMTP id i9-20020a056512318900b004b4e3bd6ca0mr14693799lfe.278.1669838035904;
        Wed, 30 Nov 2022 11:53:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:780f:0:b0:26f:b780:6802 with SMTP id t15-20020a2e780f000000b0026fb7806802ls3008195ljc.0.-pod-prod-gmail;
 Wed, 30 Nov 2022 11:53:52 -0800 (PST)
X-Received: by 2002:a2e:8884:0:b0:279:c9f2:757e with SMTP id k4-20020a2e8884000000b00279c9f2757emr1014839lji.149.1669838032155;
        Wed, 30 Nov 2022 11:53:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669838032; cv=pass;
        d=google.com; s=arc-20160816;
        b=aOciqM9F3UMI5rw0ylJcxisTXwUhxY61/ig868gacfJSLXy1o+n1GQDMAy8OYaovml
         d7QAHFMA2ji7sLoXOgVce1J4gFUmpxdV/jYqg0L6Ju9s7ojoBrplI1fTvHWlON5TG1+O
         fQKbn0vWf80IyCEgqiOvn6GobShQ5euznIbScCaJCS3ThwtC6FLp5uQEcdREdAD9SHvg
         O8Bds7KgJaGn3T1n25MJ8L6zP/Fi8zu8geUe6s6IKaau+2yzfRxJ/hPeGaG4RkfDZCXi
         gZYFVcsPFMZRQQaX9ZPyyqWfpCPIxJ1RkvAY6OyrZsmg/eGKyhRl70ehFKt/A7tMyCS2
         d26w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=xzo1qMnwzUUTj3lYKxU73BZgSX7XESnxLc7QcsTfofU=;
        b=w+8WYXTlcqu4gFkH9qCFTgejQxJCBF+8L2I9BM4CGZfWdsnIZcozPEYI3Tsk5bqoaf
         zlmYQz73uA90OLL2N8Oyu8bY/xy1gA5wn7kBR7DzkhUcZHgvbQ7npxMYBGVkNFKGE4LZ
         Zauoql4FsXSQrhAx1uWRIuEAuzq+Y957pYYYRbJFm8xJxk9mXydQSl0nXc22s5Cnzi1S
         wAc8GYNn/q250Byi0LIFUBwW0cAd6qqvXrCK8SEQ6TyB6zJDAqJITVzFThr+YmOi2Uzy
         sdS1ygN8CceNcLsmlISso/QQjaT+Py1SYQ0xStQ9/V/TDEgzm6ROqcuCGxud/MORGkln
         NR9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b=ahhbb6zz;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:7e1a::618 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on20618.outbound.protection.outlook.com. [2a01:111:f400:7e1a::618])
        by gmr-mx.google.com with ESMTPS id r11-20020a2e8e2b000000b00278f552596bsi73631ljk.2.2022.11.30.11.53.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Nov 2022 11:53:52 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:7e1a::618 as permitted sender) client-ip=2a01:111:f400:7e1a::618;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X4c0dUPQXCLo2vOIQQMtoDJ6Ipt49uh+BscdZmW2sM2hIUqMiBJSCZ08mE0cbB3O3E/7ZE6FrgrgBTTEdZZ80px9+xbx8uPKKldvo4OJLCO3ZCRP79EnM/qVtbiZ/2egM03Z+7cIUhp9EzgeAP02b5d6XSS2sDCI0YEiEql0S2TH4DJwpkIrT4zubh2yYAMczh801HOFRW5P2p87ARa6LC2rMKfutTyDSJ4JGIROk9RL7STh4pzDo8bfymnxREQZRIMH/Ck4ee771Kx09t/d35xyA0aYFexzFxLUMnQF4Fp3djZUXQaqts40W2Saqx6GxABYp7dnNIAlwcerUEvZHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xzo1qMnwzUUTj3lYKxU73BZgSX7XESnxLc7QcsTfofU=;
 b=ZFOETUS0tQhnOHkIBmkw/1uRqdiLNUJ8XMVOVGFzoAeSDU5ZyZJS4EJRgAhxRbRLoLsDQ+sJHr2Co8zSK6pQ+A7Z+ManTR5un4YYj8qgXIjdHilvXnr6VEE5M4mAcMIRJ00vZwIJOKhW5YHI3d6h2I7IslcRtYBbIYm0OAdoZDId40A23Ei/znmyUUngNfbhsID8W9reO1VQYe7ZSq0clQZswgNihAmLZollDi8oZ6lTGyAxuMzKcL3p9V9bUOyOJFTmlyk+N0gp6JfZgAKkFTaHfDpZSUQul83/lVBKdeB5Tt2fTWkLLHUDPi6nNj4/E3073SUtbjt8aGNsqHdC/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM9PR04MB7521.eurprd04.prod.outlook.com (2603:10a6:20b:2df::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Wed, 30 Nov
 2022 19:53:50 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9%5]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 19:53:50 +0000
Message-ID: <057b6774-646d-5970-4743-20e249856688@suse.com>
Date: Wed, 30 Nov 2022 11:53:45 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
Content-Language: en-US
To: Wenchao Hao <haowenchao22@gmail.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>, open-iscsi@googlegroups.com
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
 <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR3P281CA0031.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::9) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM5PR04MB3089:EE_|AM9PR04MB7521:EE_
X-MS-Office365-Filtering-Correlation-Id: 2916f6bf-06ce-4737-2ddd-08dad30c99c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OkdweRQb/FMz2DxkqfCsayPXYzCbO/fJDaHR3N+CsTsXAg1kG/qbVZMeEUY19LfO/sELD2JCgsKPKrOXDbDJqj2/f2be6ukVEN+k3g1cjByaklKlmRx0azidXPaxdT+1sYPiDYIMQf+GbzH8B+YKaYGhXIEJRRXkLGH5Fd3MYkegtGaIWgXpPCAiTa2wsdtBjmqbtM0qoTfmNgyJT7a+Q3iqOVFT9jOq/V+jCKtO7pI6yZs4itFxAmrxGYJmlYeAvnU3QUfSfcARWnHJF64Z3AFZU86PSmOkAsa4XbOZOxL5gl5abTw74KiHwIEwQ1FNj13BQH8TJaPdvGgfHwXOoZbnODTk2s1ai9zufofcoMbj6+4b14UDxykIH07gmJCJP4kLZ7l8bj4lY8KUUr67/D5l5ulWszRrSrOTnswNI95L01FhvQbFytiqFYdYoXasRO1aEeeWg2EKUtEkdF+JtNiuegQln+hlJWaR6E8La4uIVdyHz/5XGCAEC+t7Lil0BuG0DKXnAfihwN5KHMHHj+ohNXtAx9/5t9b9woVCF26lQqSY0nUEqIlKzEgyKVU8rtjSFnkC5kjblg+Gdbe3gegBbBLGN5f3whbcS9M5aGHC5oV1UewU4XFwJupvjb87Aqyj144yNpWowEwVJUiDwAnLAkr5CXCMEjEEq8f3T1+PSjECVwnj4K5qy5Ut+eqvdQWAiv3FY1fMfaJENWnxYWUuFSpvVJxJliqJkMUgf70=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(39860400002)(396003)(366004)(376002)(136003)(451199015)(31686004)(38100700002)(6486002)(54906003)(6916009)(478600001)(316002)(8936002)(41300700001)(2906002)(83380400001)(26005)(2616005)(86362001)(6512007)(36756003)(6666004)(66556008)(53546011)(6506007)(8676002)(30864003)(186003)(66476007)(5660300002)(31696002)(66946007)(4326008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTlPL3JYTytjako2QkNzSjE2MklzVTdBTW85cHZxVjk1Nm5Yd3o1QWJ2YVlC?=
 =?utf-8?B?MnBRMVprWFFJcG5KTXdYeUtsVlR0Y0xyNU1FTGxBV0krQWdCVmRSam1rTkJz?=
 =?utf-8?B?TDZuV09PN3gyN1RQQ3YrR0l4VGJaZzZPTGZ3SHNxTlFlVFBoeThmNk0vRXNG?=
 =?utf-8?B?MGwwSGg2c2NoM2RkSzYxek9obnkySnIycS9CT0R3NEZJSklISnJ6Z21vVkov?=
 =?utf-8?B?aWJVRWdIU2hQMU9XbVlEOWNHNDhJYU1NSnd2VVVkTk9zdzdnU0xRZFI2T3dZ?=
 =?utf-8?B?SGNKUm41dlR4ZEhDVjd2ZEprQk1Nckg5b05SeGZSckovanZuTlVHZFlLMHdl?=
 =?utf-8?B?K2dDN21vckFObUU2QzU4NGcrRzY0djdseDF4bmJmQVBna0xNbmZPVXZVZHMr?=
 =?utf-8?B?VGhVNDZCWFpuYXJudnNNWnZCUFg3Z2VKZ3R1SkRpYVEwUXFMTGNWMmt5ajFF?=
 =?utf-8?B?MjVTVHBSVU9jNVpnMGRnL1BLN3dtNVJvZjUzelN1M3JNaFBDR3dRNW5ENVg3?=
 =?utf-8?B?UFE1L1F5MDNCa0c5bkIzL0VxZ3MrdXZWbE4rWjNyOXY1RU1tc3ljNWJOZHdP?=
 =?utf-8?B?WG1OOWJTQWQxb0NFaDF0ODZhZWpjaDJ5LzRwbnJoY296L2h5YUZ4bzQ2MGFq?=
 =?utf-8?B?a0l2SFNMWStyL1BPT1lxOVIwd3Z3WU91VE91bUU0ME5oNkY0Q1JlN0tTYUJJ?=
 =?utf-8?B?aThRTmluMHQ3c2VDbHVoNC93MjR3UlF1OGNmQ3VNWG1wc2V6Tm1TQ0M4UWlN?=
 =?utf-8?B?eUg0cm9oWGxwamhDMFl4d2ZmRnNtcEZrZE4zZ3FoMyszWEc1a2RtM29TREN4?=
 =?utf-8?B?OXlxNlB2SFhnNXdhYU8ydnNuYUFsVVBUTGVFMHdLVW5kaU0yQmxTdHRIQ0Ns?=
 =?utf-8?B?d0kwVnpIcGF0S0xxUzVWQ3RSZWtPd0kyd2MzakhrTFpoVkdQOEpzL2gzODg1?=
 =?utf-8?B?WmZQbmpyd1BqZ0RxVThYV09UaDhyeUpUQ05xLzdSdzNhVmJUUFBOQzVHZGxR?=
 =?utf-8?B?aTRzalZrNUJEdjFhWTB2cVMxS21CMVhKeHBiWExDUkNqRGZjUklsajBFVU9X?=
 =?utf-8?B?cnRYdFhkWWRobCtYQ3NzYVpDQWVrcStRdXBab3ZMQnQ1WTg0bFliTG5yY0tk?=
 =?utf-8?B?aXpuYjh0dkxnbzdVVG15N3BTTEZiWEFQamo0SnE2VjFTZHlXRzdWN2tEUytx?=
 =?utf-8?B?SHBSb3J1OHlmOWIwWGRzWWdzdDQ5dDU3K2xLaG50Rnp5a2VGdGZDeGpwd2NG?=
 =?utf-8?B?eEVBa0lxYXZlSW8vb3p3UmtZbWVTb3ppL0pEM2xLaUNETWl3Yjk5bjk1TXMr?=
 =?utf-8?B?QlkyVTVKUlV6bndlMEFoeVJUZXVvc3FZdlFXRGxtYWhUQzlLZEZnekRGU2NX?=
 =?utf-8?B?UHBMVC8raUNCYUgzaURLWEZCQk1xeEtlU1ZlSURWZkxMNGVHTHFhRndKRWow?=
 =?utf-8?B?RE8rMXlXWWJ1OHFJMnlhMkFuQ0IxdmhsQk9YQ3JLelpRbGxCU1BtSFZYdytB?=
 =?utf-8?B?ZDZ0WjluWnZRWjJTKy96OHdOTWNHemt3cU5PRWIyd2Q2QWhhZWxQMjF5UEtw?=
 =?utf-8?B?ZHlKRWtJNE95ZDAyUlloS2VrSFhmaHpZUTlEWGZjUXFWNE4ySVZreWU0Sjdj?=
 =?utf-8?B?TjF0SWlRYmpXL3NjdTlNZGlMWlFTTC81R3VkVkw5bkg3L2VrUTBzOEhJLzRP?=
 =?utf-8?B?bGRzM0JDd096Q3hLVC9SRFU0Wm4vTVlvcTNER2MwWmNpT25jUStMcUJFNzJO?=
 =?utf-8?B?V0R6cHZ2bUczQ2xwd09yanZKTm9zdG9oNVpWOEZSbDVIcCsyU3J3MFFlTTdt?=
 =?utf-8?B?UkxCa1FLd0RydmxyYVBVd1BUc3hBZk4zdUluaEp2ajkyYnFnNW1CbUVaN3A1?=
 =?utf-8?B?SGhMWGJmTDlpRHpPMWpGRE54TU82bmZ0ZG8rRWpHSXoySGtkdVEyN3JibDBu?=
 =?utf-8?B?cEtrczhSQ3pLNUpyOWVPTndOSkFURVBYN0FreG1hZ01IdCtMVjd5TEIxaSto?=
 =?utf-8?B?d3pLRzRKUTA2b2Foek9JNXhXTW1yTzd2aFNvRGRGTUNaK0xlL1c4RUo3ck55?=
 =?utf-8?B?Uk95RzN3V3ZVUkRVYzhRc1FpcE5NcHJUYy9JTy9acEdDU1RFNitINnVJcEVM?=
 =?utf-8?Q?lkiv2KtUNwHeNtzQ8DtxvgLMw?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2916f6bf-06ce-4737-2ddd-08dad30c99c5
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 19:53:50.0813
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6gQl0OSNKaE4LiuKKoTWvnkhgGIkl4+KyQ2jdrudzoeQInT1qTbIBg3d4hXn2sUuizTqFASuX+ZxV+i0fNfzYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7521
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b=ahhbb6zz;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 2a01:111:f400:7e1a::618 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
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

[A much-reduced CC list, since my reply doesn't need wide distribution.]

On 11/23/22 09:27, Wenchao Hao wrote:
> On Thu, Nov 24, 2022 at 12:51 AM Lee Duncan <lduncan@suse.com> wrote:
>>
>> On 11/22/22 20:41, Wenchao Hao wrote:
>>> On 2022/11/23 4:00, Lee Duncan wrote:
>>>> On 11/22/22 13:30, Wenchao Hao wrote:
>>>>> There are 3 iscsi session's startup mode which are onboot, manual and
>>>>> automatic. We can boot from iSCSI disks with help of dracut's service
>>>>> in initrd, which would set node's startup mode to onboot, then create
>>>>> iSCSI sessions.
>>>>>
>>>>> While the configure of onboot mode is recorded in file of initrd stage
>>>>> and would be lost when switch to rootfs. Even if we update the startup
>>>>> mode to onboot by hand after switch to rootfs, it is possible that the
>>>>> configure would be covered by another discovery command.
>>>>>
>>>>> root would be mounted on iSCSI disks when boot from iSCSI disks, if the
>>>>> sessions is logged out, the related disks would be removed, which would
>>>>> cause the whole system halt.
>>>>>
>>>>> So we need record session's start up mode in kernel and check this
>>>>> mode before logout this session.
>>>>>
>>>>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>>>>> ---
>>>>>     drivers/infiniband/ulp/iser/iscsi_iser.c | 1 +
>>>>>     drivers/scsi/be2iscsi/be_iscsi.c         | 1 +
>>>>>     drivers/scsi/bnx2i/bnx2i_iscsi.c         | 1 +
>>>>>     drivers/scsi/cxgbi/libcxgbi.c            | 1 +
>>>>>     drivers/scsi/iscsi_tcp.c                 | 1 +
>>>>>     drivers/scsi/libiscsi.c                  | 5 +++++
>>>>>     drivers/scsi/qedi/qedi_iscsi.c           | 1 +
>>>>>     drivers/scsi/qla4xxx/ql4_os.c            | 1 +
>>>>>     drivers/scsi/scsi_transport_iscsi.c      | 4 ++++
>>>>>     include/scsi/iscsi_if.h                  | 1 +
>>>>>     include/scsi/libiscsi.h                  | 1 +
>>>>>     11 files changed, 18 insertions(+)
>>>>>
>>>>> diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
>>>>> index 620ae5b2d80d..778c023673ea 100644
>>>>> --- a/drivers/infiniband/ulp/iser/iscsi_iser.c
>>>>> +++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
>>>>> @@ -947,6 +947,7 @@ static umode_t iser_attr_is_visible(int param_type, int param)
>>>>>             case ISCSI_PARAM_IFACE_NAME:
>>>>>             case ISCSI_PARAM_INITIATOR_NAME:
>>>>>             case ISCSI_PARAM_DISCOVERY_SESS:
>>>>> +        case ISCSI_PARAM_NODE_STARTUP:
>>>>>                 return S_IRUGO;
>>>>>             default:
>>>>>                 return 0;
>>>>> diff --git a/drivers/scsi/be2iscsi/be_iscsi.c b/drivers/scsi/be2iscsi/be_iscsi.c
>>>>> index 8aeaddc93b16..a21a4d9ab8b8 100644
>>>>> --- a/drivers/scsi/be2iscsi/be_iscsi.c
>>>>> +++ b/drivers/scsi/be2iscsi/be_iscsi.c
>>>>> @@ -1401,6 +1401,7 @@ umode_t beiscsi_attr_is_visible(int param_type, int param)
>>>>>             case ISCSI_PARAM_LU_RESET_TMO:
>>>>>             case ISCSI_PARAM_IFACE_NAME:
>>>>>             case ISCSI_PARAM_INITIATOR_NAME:
>>>>> +        case ISCSI_PARAM_NODE_STARTUP:
>>>>>                 return S_IRUGO;
>>>>>             default:
>>>>>                 return 0;
>>>>> diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i_iscsi.c
>>>>> index a3c800e04a2e..d1fb06d8a92e 100644
>>>>> --- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
>>>>> +++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
>>>>> @@ -2237,6 +2237,7 @@ static umode_t bnx2i_attr_is_visible(int param_type, int param)
>>>>>             case ISCSI_PARAM_BOOT_ROOT:
>>>>>             case ISCSI_PARAM_BOOT_NIC:
>>>>>             case ISCSI_PARAM_BOOT_TARGET:
>>>>> +        case ISCSI_PARAM_NODE_STARTUP:
>>>>>                 return S_IRUGO;
>>>>>             default:
>>>>>                 return 0;
>>>>> diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgbi.c
>>>>> index af281e271f88..111b2ac78964 100644
>>>>> --- a/drivers/scsi/cxgbi/libcxgbi.c
>>>>> +++ b/drivers/scsi/cxgbi/libcxgbi.c
>>>>> @@ -3063,6 +3063,7 @@ umode_t cxgbi_attr_is_visible(int param_type, int param)
>>>>>             case ISCSI_PARAM_TGT_RESET_TMO:
>>>>>             case ISCSI_PARAM_IFACE_NAME:
>>>>>             case ISCSI_PARAM_INITIATOR_NAME:
>>>>> +        case ISCSI_PARAM_NODE_STARTUP:
>>>>>                 return S_IRUGO;
>>>>>             default:
>>>>>                 return 0;
>>>>> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
>>>>> index 5fb1f364e815..47a73fb3e4b0 100644
>>>>> --- a/drivers/scsi/iscsi_tcp.c
>>>>> +++ b/drivers/scsi/iscsi_tcp.c
>>>>> @@ -1036,6 +1036,7 @@ static umode_t iscsi_sw_tcp_attr_is_visible(int param_type, int param)
>>>>>             case ISCSI_PARAM_TGT_RESET_TMO:
>>>>>             case ISCSI_PARAM_IFACE_NAME:
>>>>>             case ISCSI_PARAM_INITIATOR_NAME:
>>>>> +        case ISCSI_PARAM_NODE_STARTUP:
>>>>>                 return S_IRUGO;
>>>>>             default:
>>>>>                 return 0;
>>>>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
>>>>> index d95f4bcdeb2e..1f2b0a9a029e 100644
>>>>> --- a/drivers/scsi/libiscsi.c
>>>>> +++ b/drivers/scsi/libiscsi.c
>>>>> @@ -3576,6 +3576,8 @@ int iscsi_set_param(struct iscsi_cls_conn *cls_conn,
>>>>>             break;
>>>>>         case ISCSI_PARAM_LOCAL_IPADDR:
>>>>>             return iscsi_switch_str_param(&conn->local_ipaddr, buf);
>>>>> +    case ISCSI_PARAM_NODE_STARTUP:
>>>>> +        return iscsi_switch_str_param(&session->node_startup, buf);
>>>>>         default:
>>>>>             return -ENOSYS;
>>>>>         }
>>>>> @@ -3712,6 +3714,9 @@ int iscsi_session_get_param(struct iscsi_cls_session *cls_session,
>>>>>             else
>>>>>                 len = sysfs_emit(buf, "\n");
>>>>>             break;
>>>>> +    case ISCSI_PARAM_NODE_STARTUP:
>>>>> +        len = sysfs_emit(buf, "%s\n", session->node_startup);
>>>>> +        break;
>>>>>         default:
>>>>>             return -ENOSYS;
>>>>>         }
>>>>> diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_iscsi.c
>>>>> index 31ec429104e2..b947a5bca380 100644
>>>>> --- a/drivers/scsi/qedi/qedi_iscsi.c
>>>>> +++ b/drivers/scsi/qedi/qedi_iscsi.c
>>>>> @@ -1437,6 +1437,7 @@ static umode_t qedi_attr_is_visible(int param_type, int param)
>>>>>             case ISCSI_PARAM_BOOT_ROOT:
>>>>>             case ISCSI_PARAM_BOOT_NIC:
>>>>>             case ISCSI_PARAM_BOOT_TARGET:
>>>>> +        case ISCSI_PARAM_NODE_STARTUP:
>>>>>                 return 0444;
>>>>>             default:
>>>>>                 return 0;
>>>>> diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
>>>>> index 9e849f6b0d0f..1cb7c6dbe9d3 100644
>>>>> --- a/drivers/scsi/qla4xxx/ql4_os.c
>>>>> +++ b/drivers/scsi/qla4xxx/ql4_os.c
>>>>> @@ -468,6 +468,7 @@ static umode_t qla4_attr_is_visible(int param_type, int param)
>>>>>             case ISCSI_PARAM_DISCOVERY_PARENT_IDX:
>>>>>             case ISCSI_PARAM_DISCOVERY_PARENT_TYPE:
>>>>>             case ISCSI_PARAM_LOCAL_IPADDR:
>>>>> +        case ISCSI_PARAM_NODE_STARTUP:
>>>>>                 return S_IRUGO;
>>>>>             default:
>>>>>                 return 0;
>>>>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>>>>> index c3fe5ecfee59..39c14d2a8aad 100644
>>>>> --- a/drivers/scsi/scsi_transport_iscsi.c
>>>>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>>>>> @@ -4367,6 +4367,7 @@ iscsi_session_attr(tsid, ISCSI_PARAM_TSID, 0);
>>>>>     iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
>>>>>     iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
>>>>>     iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
>>>>> +iscsi_session_attr(node_startup, ISCSI_PARAM_NODE_STARTUP, 0);
>>>>>       static ssize_t
>>>>>     show_priv_session_state(struct device *dev, struct device_attribute *attr,
>>>>> @@ -4488,6 +4489,7 @@ static struct attribute *iscsi_session_attrs[] = {
>>>>>         &dev_attr_sess_def_taskmgmt_tmo.attr,
>>>>>         &dev_attr_sess_discovery_parent_idx.attr,
>>>>>         &dev_attr_sess_discovery_parent_type.attr,
>>>>> +    &dev_attr_sess_node_startup.attr,
>>>>>         NULL,
>>>>>     };
>>>>>     @@ -4587,6 +4589,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
>>>>>             return S_IRUGO;
>>>>>         else if (attr == &dev_attr_priv_sess_target_id.attr)
>>>>>             return S_IRUGO;
>>>>> +    else if (attr == &dev_attr_sess_node_startup.attr)
>>>>> +        param = ISCSI_PARAM_NODE_STARTUP;
>>>>>         else {
>>>>>             WARN_ONCE(1, "Invalid session attr");
>>>>>             return 0;
>>>>> diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
>>>>> index 5225a23f2d0e..e46e69c1fd02 100644
>>>>> --- a/include/scsi/iscsi_if.h
>>>>> +++ b/include/scsi/iscsi_if.h
>>>>> @@ -610,6 +610,7 @@ enum iscsi_param {
>>>>>         ISCSI_PARAM_DISCOVERY_PARENT_IDX,
>>>>>         ISCSI_PARAM_DISCOVERY_PARENpatches.suse/block-switch-polling-to-be-bio-based.patchT_TYPE,
>>>>>         ISCSI_PARAM_LOCAL_IPADDR,
>>>>> +    ISCSI_PARAM_NODE_STARTUP,
>>>>>         /* must always be last */
>>>>>         ISCSI_PARAM_MAX,
>>>>>     };
>>>>> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
>>>>> index 654cc3918c94..af4ccdcc1140 100644
>>>>> --- a/include/scsi/libiscsi.h
>>>>> +++ b/include/scsi/libiscsi.h
>>>>> @@ -327,6 +327,7 @@ struct iscsi_session {
>>>>>         char            *boot_target;
>>>>>         char            *portal_type;
>>>>>         char            *discovery_parent_type;
>>>>> +    char            *node_startup;
>>>>>         uint16_t        discovery_parent_idx;
>>>>>         uint16_t        def_taskmgmt_tmo;
>>>>>         uint16_t        tsid;
>>>>
>>>> The iscsiadm/iscsid tools refuse to logout of an ONBOOT session.
>>>>
>>>
>>> Sorry I did not highlight the key points. The root reason we need to record
>>> node_startup mode in kernel is userspace's node_startup mode is unreliable in
>>> some scenarios:
>>>
>>> 1. iscsi node and session is created in initrd, the configure files of these
>>>      nodes would be lost after we switch to rootfs
>>
>> That is not my experience. When I boot from iscsi root, after the system
>> is running, if I tell the iscsiadm to logout of the root iscsi target it
>> refuses. I will test again to verify.
>>
>>> 2. someone do iscsiadm -m discovery but did not specify the operation mode,
>>>      the iscsi node's node_startup would be updated to which specified in iscsid.conf
>>
>> The default on iscsiadm discovery mode is to replace the info on a
>> discovered target, but there are other modes. And they don't effect the
>> current (root) session.
>>
>>> 3. someone do iscsiadm -m node -o update to update nodes' configure
>>
>> Again, does not effect the currently-running session, and can be
>> considered shooting oneself in the foot.
>>
>>>
>>> What's more, it seems "iscsiadm/iscsid" only refuse to logout of an ONBOOT
>>> session when logout is specificed by "--logoutall". We still can logout an
>>> ONBOOT session with "iscsiadm -m node -u comamnd".
>>
>> Again, I don't believe that's correct. I will test it.
>>
>>>
>>> Based on these analysis, I think we should record the node_startup mode in kernel
>>> and check in userspace to avoid logout ONBOOT sessions.
>>
> I cloned the source code from github and built to test.
> Here is my brief test steps:
> 
> 1. discovery an iSCSI node and login, the default startup
>     mode is manual
> 2. using iscsiadm -m node -o update command to update
>     the startup mode to onboot(it did not refused)
> 3. logout the session with iscsiadm -m node -u
>     the logout succeed too.

Let me start by saying I agree with you now, that there *is* an issue. 
But your test was flawed.

After you log into a target, changing the Node database does nothing. 
The node database is only referenced with you login using it, e.g. 
"iscsiadm -m node ... -l".

But even if you logged out and then back into the target, thereby using 
the updated Node DB entries, it would not have worked.

For one thing, "iscsiadm -m session -u" just logs out of all sessions, 
as far as I can see, based on testing and code inspection. So that is a 
problem.

Note that the iscsi.service systemd service file on SLES does "not" do 
that. It instead logs of of "manual" and "automatic" session, but only 
ones that are listed in the Node database.

And as you pointed out, any knowledge iscsid has of existing sessions is 
lost if the daemmon dies or is stopped, then restarted. At that point, 
the only knowledge is has about each session is what it finds in sysfs.

I have done some testing with your new kernel change that adds a 
"node_startup" sysfs string attribute to session data. I modified 
open-iscsi to pass in the node startup value, and that's a good start. 
The next step is adding a "startup" value in the session structure, 
filling it in from sysfs (or current state), and refusing to logout out 
of sesions that have this set to "onboot", which all sounds fairly 
simple. I also want to test with "iscsiadm -m fw -l", which is what I 
believe is used when booting from software iscsi (i.e. iBFT).

Have you already worked on the open-iscsi side of this? No reason for 
duplicate development.

-- 
Lee Duncan

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/057b6774-646d-5970-4743-20e249856688%40suse.com.
