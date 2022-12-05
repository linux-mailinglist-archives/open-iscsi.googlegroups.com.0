Return-Path: <open-iscsi+bncBD54HHNYIIINHTNYTQDBUBAMKJJKI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0F8642E6F
	for <lists+open-iscsi@lfdr.de>; Mon,  5 Dec 2022 18:14:00 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id o5-20020a05600c510500b003cfca1a327fsf7165311wms.8
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Dec 2022 09:14:00 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1670260439; cv=pass;
        d=google.com; s=arc-20160816;
        b=y2SG/ryBL86UHBFt9pEOBajxgvakxXmHsqs0avxQcvcBGZMoLPipd97IsKrcHJfym9
         oqdRtZOfBUs+5d+pudOiF15gBwPI0MYTnOhOl4QbKLLhozWV4A7sSLbqtte1+bVM1FJn
         OGvzVNGinFaNpdE6M/PgfGC4Zu9sNZ7LLqj4ZmCIrLCIWQ4mGIr2Q9UuoQrFDgZTo4EG
         kjvYxP3Za6LPXfrm5/DMFFt8y3SKeNLi2pw39E/ZYPKx7AQOJN8H7vXouudiRLd1GW+u
         Ayt9BTw+XBqpcbnZqupO+audYbkMeXpD8/U66AoEcQhmvNn82KQR2LaoVKPDWGD/f5MI
         P6mA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=tEcl3z1wUqsBzd9KwtVGOqbXoE15mFjqvX8RzgdqTAE=;
        b=nj1kIPWNuJFD953DVsPsl5DDALLKXJjYAI/ytmueD7FWsQ6XV5/n+UjnZQqSLhTRn1
         /oG9oJ/x23RTkh/kb5OUaXBeVCgMb7ZXDYDlDI6CeR1XCCm7R4caucqa/kzSetxVcZC3
         HKpReBkvG3ZrZ5+eUu2JoaaRFP9hYHT8xnrPf7yGeyVKolHCXJOXRvHDHqrKds/UVcq5
         os7o8N8n6Zi354HR73zr/qE9f3r3XsY1Gabn190HIbLTUtylJYqpfl8cG0m79xHpY4NV
         dVbqs9pkaG8wdfBCnb3ho6T50cpulstdLTMGR0rEgol1Y8NbQZeP9P3ScBIbnfEMdBj1
         GCOQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b="Ht/G1s7M";
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 40.107.104.51 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tEcl3z1wUqsBzd9KwtVGOqbXoE15mFjqvX8RzgdqTAE=;
        b=n3mRUQ/1Z0X50KWTFnMw/6FxZN5d16wfUQCQa1mUEycxGWLUjWdbTNrVwpfx+E9nxw
         VlDmzqTyPCc39h98kXxwxPTy0vxc2lOzCvZQBZUFse+hF8x7cIvUG6VY2CrniW7wbpso
         g2SmAGo2TCN0qPNUomtStXlAy23LGJ15OClUE4Bx29vzTd4exHLnDLoNtAwLdzLCWM8t
         po4mW8yAfRpeWB/UXxoXE0tMm518xwWSNK57zYirrAIjUK8VGHXfuI2ZpRxPePALRH/o
         ewlscqesZBktb8stkXBI2keKK3UMtrw9pAnnv+wuBmglEQyZKL2uQDtS8eNa4jFS94BU
         TD0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tEcl3z1wUqsBzd9KwtVGOqbXoE15mFjqvX8RzgdqTAE=;
        b=oOEZIJcTHoh0MezFW8p80CEvLi2q3WxP68UFfH5UGawSIKk4N+MV95X8+GI1uhyqui
         gYtDmbvMmd7hNb3gQ6Va+K/7yzYQch3gXzjvkpO2ZoSwHrWSiCfGeocd0pT5yarM0DZv
         YOzByrbPB22UIASOU+3t3QpTIZRvdpxAHU0B9ief+WICnnhm32liowAeU73th/Ki/CUa
         +EPooKX59neAWvN+tedqAn95eczXnefjWL5gPQQ6MDNSKa9xvZo/c5EnW0CSLpNs+VEv
         FIh5NtHnX31h5n7bTLyqJn42J96wu481HbrGb0vi5JQPY4gVSwptpo0W4Ysz36eu7QAe
         MK5g==
X-Gm-Message-State: ANoB5plTSgGAGWgPTWX0ze7IimGmSDk84RRBfa/b5+sCPpYkx5cqYi6U
	crJhWTrDeAa/M+mEU9dvQM4=
X-Google-Smtp-Source: AA0mqf5T71dKhewSiLSHgNOAvUCZzV7bGy44SSxI50S2Jq6Sd/PaKRpDxgGhRSd+YNY+CaGqXru5vw==
X-Received: by 2002:a7b:cc87:0:b0:3d1:6ecd:65a1 with SMTP id p7-20020a7bcc87000000b003d16ecd65a1mr5623226wma.100.1670260439774;
        Mon, 05 Dec 2022 09:13:59 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:6f1d:0:b0:225:6559:3374 with SMTP id ay29-20020a5d6f1d000000b0022565593374ls2115205wrb.2.-pod-prod-gmail;
 Mon, 05 Dec 2022 09:13:54 -0800 (PST)
X-Received: by 2002:a5d:4c86:0:b0:242:1b09:7cde with SMTP id z6-20020a5d4c86000000b002421b097cdemr22061817wrs.513.1670260434389;
        Mon, 05 Dec 2022 09:13:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670260434; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ZlFgA/wMG4cMNnmV5TtSF5Io6KBgJPm2ZQEzU+1Vj8Y7o5/j7W2LaWYY98ou4JMMz
         uIovHtJY38enqGrd0vDifsis0IvgzMXIruIr93wrHRsWH2sQMkO+zumpQLScTR3cBCdS
         R6IuzWw64FcKqKWBR/dLh62J7gxYDBjZHG4UFOk2tlG6BETJZHjUR2Pqaxj7gH6Z3Spf
         MFN/Tcw83fiifIS87cXc8rd4hQzX8iJCcf/qSHUPXMbQ+S4vqZ7h54UWBom/QORT5yb4
         qJo9IEuv6GxEyPuuZdTTSKKvYrju4yU5ykOOziFk/h4zTiYS3y31izIADy/1glH46B/h
         zjjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=C7FcDDnoHsqlORjoR9s9fhlN4+1hCG21HfCG0GJk6fU=;
        b=zkMOLcm4k431MSTsEqXG/9Rv+kzba8CFz0Ovk3dh7QEdDeqZxqAeow+/7PpLMq7TZk
         SP5Nvf58DIQzBBX9rTRLPxELYczHGxaS0r5b3sSaYrHS6eER3LPUqcc9otYkl2QV+lYA
         WyWiQNYbpx5vQWMaJpVVsgk+UmWoJ+Nj0NMLUWqFRA40k8ZupE0n82/kKyJoA66l7Y89
         X2P1go8AacLZ2bt1gR2Q2F+fiKDiyg0J2niQZmKusIdIxPvsFguznIAnCaJsYSAFfvuZ
         njbS+87GyWKE4G++6Md5/YMcOprZolgMe4U1T5ptbEQPUw5ZhHKvCs0n/I1BkT0vDSyO
         /FsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b="Ht/G1s7M";
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 40.107.104.51 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2051.outbound.protection.outlook.com. [40.107.104.51])
        by gmr-mx.google.com with ESMTPS id m188-20020a1ca3c5000000b003d1d8d3577dsi110291wme.2.2022.12.05.09.13.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 09:13:54 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 40.107.104.51 as permitted sender) client-ip=40.107.104.51;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IBv2rZZVO8G5KmNrB+Tbq/fWyeYfoa7DDmKtZvqUrINPtQ6xYbmW9th1Hl92VIgtcHk3VhJbD3rcNC2imD42Lc2JGzzD4aWtHZIRDcEHiWypJAOGSTlRMkkxif5C0p0Z3eqb5qpfdCf0UY59tEFkKItCOxJuPA++JDxSwQV3ng7WC3+oIpA3VvbKMDq7i0jy5PZbTmzPen/ZFwqXfSEQ6emPDhlEFkZ1Ju0i8UGLRRVVMvwqjrY7svMtQkSsXM8N93xjt3Z7PTiqwcTTCm/Sdfw/ZTzngqbWXw1Ub2aY44E4n39v0x87Ts3KP+JVYOgHzwYfqsBrBaB3eeZrf9WX2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7FcDDnoHsqlORjoR9s9fhlN4+1hCG21HfCG0GJk6fU=;
 b=fOMkCUWkIzpaN2u9u4XhgPqgrHmOY/hJNfvhSmboYPOpITcvgLNKPyPwmOnKNAcQScMFkp/CvrmwVmA+WXbD8VKGz8xk5JBMTXYe3+riGSpJc/ZV4cIHfcFMbg8dbMeSQF2E5Lj4b171Vuyngz2KpHwTqBFWvfv/IvAfiKp71YYRD8tt7B7DmYIr8gD8+7SMJ3L6KOM7Ex7y73P9DFLHJcE4rb2rQEb9IV89jzOvyF9WU/Qfwaxkeul5VbyG8XowPqZdtAXHUcHlopkbkau67IKhuEmniLAl5AyoO66Nhr/v4EEberkWnzkcQTNRxXqrClj3VdJ6MIxtYq+T6HNtdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM9PR04MB7636.eurprd04.prod.outlook.com (2603:10a6:20b:281::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Mon, 5 Dec
 2022 17:13:53 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::88c9:1477:70d9:86e9%5]) with mapi id 15.20.5880.014; Mon, 5 Dec 2022
 17:13:52 +0000
Message-ID: <181bdb6a-fbaf-1e18-9d08-4bbabf467321@suse.com>
Date: Mon, 5 Dec 2022 09:13:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
To: Wenchao Hao <haowenchao22@gmail.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>, open-iscsi@googlegroups.com
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
 <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
 <057b6774-646d-5970-4743-20e249856688@suse.com>
 <CAOptpSMzQC0ur7oWFRD0fzie7eENxh6JK+c0JE+oLhCiypQBRA@mail.gmail.com>
Content-Language: en-US
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <CAOptpSMzQC0ur7oWFRD0fzie7eENxh6JK+c0JE+oLhCiypQBRA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR0P281CA0120.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::10) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM5PR04MB3089:EE_|AM9PR04MB7636:EE_
X-MS-Office365-Filtering-Correlation-Id: c3e752d7-be26-4369-b612-08dad6e41560
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5WucQLWfiuEmwR1ylITjBLfuWFg2Op+GBNWfAsehaJsg/87KfsF+maINi7RSdjFFK8ZfdSWgAyRzguxd0Kl6QuYCA8kj3uk3OTCkvdHes5Gv2KNtS/AGHYQjYopZKkVEGAdk4pYHDtmkc2kxCa5H6oDESlcv6z/hbPgFFcVIB00jBf7iFA57+zzaaJwylTWuxpLQ2lUs2F8y4O5vDwL17Al3YMHY8GT7yfiRyJnrTlNzEBMRgcQScvyMNPplFJEskScK+ENC/WjiTU0BHEXwOVmkpQ0VVPenUOBAtOqFfMfGiFHr3f/s/R55Dn5PgvgDXHtnutMvu86KMm9KxGhw2n0KCmBp5qpbmdTFHyWrxAV8mYKbNGNHyRd1+/if+h2U+9ILOp+csY5QSOhiBRjE0l+64tDCxc5wuLFLKQjISEDHRsPCWr3bX11L+wqW+K/b81DEZNQqoYBA4Zw+SQbcLeGGGvvw2gVJv+gnYrRGmlS5ck5WN4TaDV0/GdbtQkXObdshY6u4VB3HEWGki61jHIItmVxJ0WaTyXt6yqwGRz+g/5JXHhzamsVDkvcWWetiDjd6JPinLqfEq7A4A/DVZ4CvWVipcWndSjuB5ER96xizgB1KTCCJ0+tt2B2LffOQKSLVIsr2Anxx+nqReBQdBqUtx/F+/HbAQwFKwG6r3lu1yR8+OnE+H9dBUxMyjMFLGs46xx25Stq7oFD+XKaSenj/YCexY35UjsAramoavmA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(376002)(366004)(39860400002)(346002)(396003)(451199015)(31686004)(31696002)(86362001)(478600001)(6506007)(53546011)(6486002)(36756003)(83380400001)(2616005)(186003)(38100700002)(8676002)(4326008)(5660300002)(41300700001)(6666004)(6512007)(26005)(66476007)(66556008)(66946007)(316002)(8936002)(6916009)(54906003)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anFQekVheUJNeWc5U1FDM0FuTkhHcmlCdWZoODZhSTB4ODQrMXVvU2owTysw?=
 =?utf-8?B?V3B0WGNldW51M0FqcmkrcTVsSW9UcnEveXE1RUhsWHBrRkNBSHRRc2s4RW8y?=
 =?utf-8?B?clUyQk1TdFBNb0hNc2pHQ3hvYW1pdWo0UHdqdXk3ZFR2M09ObWR0dmh2dHlp?=
 =?utf-8?B?eDEyaFBXTStVU0FuS2FCeWZXaGJFWGxjcE9sZCt6R2lVN2prVjIxaXI1UnZU?=
 =?utf-8?B?VmJhYmZCdGcwZGd1YzdjZFowenR3MGJJakRKZmlFVktiakdKRHplVElSTi82?=
 =?utf-8?B?b1ZUQkxXZUFIbW04aDNDSDBaSW5MS0VUd1VRQkcyVjlNVWRxNkJIMXlFM1Ja?=
 =?utf-8?B?V3pnZFV5Nm1NOWpxcW0zNS9YcUtSK2V6dTVZRnVCZFA2MXh5bDMvTlhCSjVr?=
 =?utf-8?B?OE9WSmd2aWZ0T3RzT2tFMGlJU1REYW9WUVFQQWt5RXBXb3Q0d29rT2tzQkJw?=
 =?utf-8?B?TTdaWUtCRWVEaHAvR1pxdmhCREp4UGsvVDRCcUVIakVBN2llTlhHTXRybW4v?=
 =?utf-8?B?MFdGY3dBRStlcXRtWWJlcmR0T2ZPVGpPTFd6Z3NyVlViV2NGRmt3dndGUTRx?=
 =?utf-8?B?b29lQTlSN0ZmV0MvL1JZejMzNnM4RGlMbG9zTS9ucWpUdXA3bnl4cWltM1hZ?=
 =?utf-8?B?TWFiTHk4RUJBeWl2Z21PWVJ6b1p5RUx0eEVyRklFWDVmNWFiVGFtWGVXMGUy?=
 =?utf-8?B?eGQyUjA0cGlCU2NQbDhRMlRoU2VXY2xCU3AvalZRZjJNcWpFbFM2cWVIL2lH?=
 =?utf-8?B?cXBlalplZjFIVGpEdHhBRmJERlk5c3JGRHUvTGIrNUVqZ0tLM1pkUEEvc0d1?=
 =?utf-8?B?MlRjY2lLNm9JRCtpdi93UkdTVDVnWHRWLytXQ2ErRFVGL1UySTdjaGtCeEh5?=
 =?utf-8?B?MjFzTlBtbXFhVGR5N1dXMVZwUVE2VUtBdytzUnBnbi9KQUNyeW54b05oTXNL?=
 =?utf-8?B?MllYKzhNdllydWdGMjRtejBnRXF2aUVPYjNqanhJbnNid2JqR3JWTW01OElI?=
 =?utf-8?B?bSthT2E2TGdsQlpRQkc4UDNFcTNWdTUzcFZaNCtYZ2pZckZhSnNkYUdRTERZ?=
 =?utf-8?B?eG5rYURSWmtaZjlNVzM0VGJJM3hwcWJ3SXFOU2IzNmZIZkU4TTdvb2VNVWRq?=
 =?utf-8?B?bnB0ZFlmSytyTmVlQndNY0ZNNk9XUm5DNnRldUNFRHdiNnNxbURoWFB5azU4?=
 =?utf-8?B?UDRaak9XcFVHdzhSOWF6QWsrbzJDbGc2RDJKbkh1ckoyRmx0dEVYSVhXUDds?=
 =?utf-8?B?OVlZVC9QTUVxSGpFSStRQ2x1T1RmMjZZQ01tY3dPckxDZ2grSjNlM2tzMnRN?=
 =?utf-8?B?ck9tMUtHb1Jsa281VDBkLzNhZDVuY0FCSkN0ZHc2clI0UkJObGcwRjJjOGdO?=
 =?utf-8?B?REZ0UnJWMnF6TzNtdCtqOGppK3VFNHkyWUR1SVhheWFvK3JadEhudFc2dGZo?=
 =?utf-8?B?YUw4bHpzaVV5eG4xcHlsMllRZGxnM1UxR0FhOWZhc2xEdnQrdXQ4NkhBWDBM?=
 =?utf-8?B?eVIyQVlwZVFYaEdoTExKV2FTb2VoWEg2L0RrSm5WK2ZYdFZKTisrSHh4aVB3?=
 =?utf-8?B?Q3llWnR1SlNjQnROWHZDKzF6RzQ0M29SNlVDUkk1czNlVk9RSzlueGFlZDZX?=
 =?utf-8?B?RnlvNUxjZFRPb09NRHBJY1hZS1hKYUxJeXN5Y2MwMnJYbmM5WWhvdzZVZGRF?=
 =?utf-8?B?eXZzQVJUS2UwaVVlWmFBTTdkMk1NWWtGM3FyUmxPSmhaWHZqbWwyN2NhTGgr?=
 =?utf-8?B?SC9FOW90M0IvSnZiTVplUnJ3dVRXQTNHNVBLZUNnS3BKSHlCajY4SkdmM3BX?=
 =?utf-8?B?VnJYdnhWbTBVSnB5WnpUMk1nMHB5aU5pUXQ5b0Fxb0o0NEFHdWJ2VElId3A3?=
 =?utf-8?B?NmxDTzcwOVFiYnJJZjJUNUpZSUtic1Fqd3J3dm01Z0p0WFcxbHpjSDNwQnZU?=
 =?utf-8?B?cjdFOXRhMEV0MHdFaHJScXVpOVBmUjJoNFU2bkNnbkN1ZmFHZEI0TmcrRXJ5?=
 =?utf-8?B?TFVpdjRhTFlrNjgyL2RCZWQ4Y0RneWR5Y2U3UjdHWCtXNXB0THhONGsvOWJ2?=
 =?utf-8?B?RUFiMVpQWXFSaFZXT3N3OUZhMW1WaFM3NUtkd25wZnZZUDNaeDJkWE03OGEz?=
 =?utf-8?Q?xubz0DWJ1u7goqSWRFYn2Ulvv?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e752d7-be26-4369-b612-08dad6e41560
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 17:13:52.7612
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DDnAZ58diZsU6iML5GFK5Fget8UXxdirNklzxNoFgpNo1CnZ6o6OptYj6qx4OeddzJwK5AQbgS6jvwQQjjnCow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7636
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b="Ht/G1s7M";       arc=pass
 (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 40.107.104.51 as permitted sender) smtp.mailfrom=LDuncan@suse.com;
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

On 12/4/22 05:02, Wenchao Hao wrote:
> On Thu, Dec 1, 2022 at 3:53 AM Lee Duncan <lduncan@suse.com> wrote:
>>
...
>>
>> Let me start by saying I agree with you now, that there *is* an issue.
>> But your test was flawed.
>>
>> After you log into a target, changing the Node database does nothing.
>> The node database is only referenced with you login using it, e.g.
>> "iscsiadm -m node ... -l".
>>
>> But even if you logged out and then back into the target, thereby using
>> the updated Node DB entries, it would not have worked.
>>
>> For one thing, "iscsiadm -m session -u" just logs out of all sessions,
>> as far as I can see, based on testing and code inspection. So that is a
>> problem.
>>
>> Note that the iscsi.service systemd service file on SLES does "not" do
>> that. It instead logs of of "manual" and "automatic" session, but only
>> ones that are listed in the Node database.
>>
>> And as you pointed out, any knowledge iscsid has of existing sessions is
>> lost if the daemmon dies or is stopped, then restarted. At that point,
>> the only knowledge is has about each session is what it finds in sysfs.
>>
>> I have done some testing with your new kernel change that adds a
>> "node_startup" sysfs string attribute to session data. I modified
>> open-iscsi to pass in the node startup value, and that's a good start.
>> The next step is adding a "startup" value in the session structure,
>> filling it in from sysfs (or current state), and refusing to logout out
>> of sesions that have this set to "onboot", which all sounds fairly
>> simple. I also want to test with "iscsiadm -m fw -l", which is what I
>> believe is used when booting from software iscsi (i.e. iBFT).
>>
>> Have you already worked on the open-iscsi side of this? No reason for
>> duplicate development.
>>
>> --
>> Lee Duncan
>>
> 
> Sorry I missed this message, I have modified open-iscsi to work
> with this sysfs interface. But I think we do not need this any more
> because the safe logout can avoid disks being removed.
> 
> Checking holders and if disk is mounted before logout seems enough,
> so ignore this discussion.
> 
> Thank you very much for your reply.

I have some philosophical issues with using safe_logout.

It is off by default, which implies to me that it has overhead. If I'm 
doing a lot of iscsi session start/stops, I don't want the overhead. 
Otherwise, why not just use it all the time.

Also, it only checks for mounts. What about if some process has the 
device open but isn't using it for a filesystem?

And since it has overhead, I'd rather just use it on root iscsi volumes. 
I have not had a single problem report from folks that have ended a 
session by accident that is mounted on. Since ending your root volume 
iscsi session is fatal, I _would_ like to proactively avoid that 
possibility. So I want to only set this attribute on iscsi root volumes, 
which means it'd have to be a per-node (or per-session) attribute, not a 
global one.

Lastly, I can imagine a time when I want to override safe_logout, say if 
some process is stuck. So it'd be nice to have a "--force" option to end 
a session even if safe_logout is set.

But as I said, these objections are philosophical/theoretical.

And for the record, I like the idea of tracking the "start mode" of 
sessions. Right now, if I list the iscsi sessions, I can't tell which 
ones where started from firmware, which were started in the initrd, and 
which were just manually started. So tracking (and being able to 
display) the startup mode would only be a good thing IMHO.
-- 
Lee D


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/181bdb6a-fbaf-1e18-9d08-4bbabf467321%40suse.com.
