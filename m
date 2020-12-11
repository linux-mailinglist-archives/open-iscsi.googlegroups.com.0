Return-Path: <open-iscsi+bncBD54HHNYIIIKFPWO7YCRUBC6M4TWO@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id F16962D7AFA
	for <lists+open-iscsi@lfdr.de>; Fri, 11 Dec 2020 17:32:34 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id t10sf5066289ljj.2
        for <lists+open-iscsi@lfdr.de>; Fri, 11 Dec 2020 08:32:34 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607704354; cv=pass;
        d=google.com; s=arc-20160816;
        b=ERJqkw3HOhFUYAcqNKijk+XakmeWRVgwBp0PNENxxoqiOrk0dPoPoBNMdF/wLWkMww
         XlKA7+SYeUHZqrerYiY0layoa2HgenZtOL6qxAdISykljC2tEN4Vn+GFstVbcyM8eQxL
         8bJqOXcEbEceHf/vZlgkrszJ92XpEZPFmt7kXDSV/qQBKwq1oGM1FwI4gkBsbsXXZ7pe
         bY7tL3Ycj+E8f+vV0FclyhsSxHNGG6oKgSBJquAZwev14XSCvvl3feGhKNj+THQ1iZpl
         iZyS1dE65lV30aAlN24NpcjoYdm87xzqlzpbggIRmNUhuQyEAsqIxnksf85vvoG8jUTO
         KdlA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=pO0QgjpIUROp3NjGNXtWNGM0t0OiluntBE0E+IAFXXk=;
        b=Sux0MoD4iiHVYE8v11+DFhLFw9duyrhr6A5yRdZQKKaAxuSbh0eLtA1TqKgv79ngee
         5qo2k7JYvO5oLQ8XHT/aLQBBBRHtgV2YWM5jgUPumR6g5Bscqkg8cHiRUvQBtaoHwlnC
         xZMuNt7CQY7PdgK6prrBmYV3nrkYyGPZbAmWFAN+84Fxs18bd9QYkcWxIPK3yeDS6Oae
         7xRzNqrvPmgnHOwOOuUsfhf2t4yuaYZ2LzOV5LUhEmTylP/++Z8vi2Ms0T0cnZW576Z7
         YDihAZrht72NF7ZrPYMY9AbUWHX5d8ZK9akQLvelPWQCvOCCP2cAvA8jhF4vgAMWbCwB
         U2ug==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=jytiSxeX;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pO0QgjpIUROp3NjGNXtWNGM0t0OiluntBE0E+IAFXXk=;
        b=D9aUw5Ei8Xyy3KPwc3IzmKHpen+X7FCketXOjpVEeJaB3Qvm8UTZRVZawTQO0StvFY
         EITi6knwsm8wCo1z0zkcO8dRBdSVsyMko+EJGrXOr9ui6UaBgmvYyubW+NLB0yUgVohl
         QmTgHjqii4y2ugD3aGjMYGi2oZj9BWQ+KTLsl3KpbkCA1UhooNJm2il/TBbhW9V380Vw
         PMosQoxj/5kL5VmycThOL56uZWmRfFCjq6kibpwuAEqAXXE7mLqwVQdVzGHRhUQRceyi
         yLTfUNOcRkCAX2ihZWiP+zsaeAzHp1CIKJiRCMYVbhH04j3UTw9D+mYMOTP3qAzVVB/A
         NCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pO0QgjpIUROp3NjGNXtWNGM0t0OiluntBE0E+IAFXXk=;
        b=hSCKn7Ny1gH/2qhPI8pYje3NbMvZEjqU3Q4PMXWEZUWw52Ht/MqwS2gatzufqFai0m
         1nb5DdL1vDxnEd8ydtYTBJpaqLat5wPpXFCxPE8JIcr4kZI+OoS4GlO6/MSmGUHINg0K
         Ya7G0GPiAQfVr3+NiZwVm+Zy93euF9EZvcdbQqzzt9lFBmVeBVJ6s5EDRRCCoBjBVGyv
         rJK+1wpHBgmcWfMJky9SZhPEJ7XPhOcUQaTy1eC5/iTmjFwBtVrqNKAEsza1bP/JzXmJ
         9k3n7eX3LvHOD2ZnJVGU8HT9a8fox6FFYDZ9rFJgPROF3aFIPnGyvybSJO8qO00f2iUr
         J/PQ==
X-Gm-Message-State: AOAM530cNKbMJdKHDSdjdQuHrKyjm5Ty9cPDjSmbx8MtCSy/gRiRGLSN
	2PeeTcEy5m3C4VsYwNV6/MM=
X-Google-Smtp-Source: ABdhPJwvkcsszFFMroYEYig58Q0llefYKUP3EhXJtAeWR1ip0iZOkf7M+5rvU1h2jMXRH5D3pPAPAQ==
X-Received: by 2002:a2e:2a83:: with SMTP id q125mr5593293ljq.436.1607704354488;
        Fri, 11 Dec 2020 08:32:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:10d4:: with SMTP id k20ls3935169lfg.3.gmail; Fri,
 11 Dec 2020 08:32:33 -0800 (PST)
X-Received: by 2002:ac2:5fc2:: with SMTP id q2mr5058649lfg.547.1607704353468;
        Fri, 11 Dec 2020 08:32:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607704353; cv=pass;
        d=google.com; s=arc-20160816;
        b=V+TNO7CPLWVaqfeIZwCpuuTuou7PViKaD297esDUENGiSCog6zovXKIHB1FumHttVB
         3ncmGD1peee3CYp4LeBX84rLaQlYDqQdETT1MGcaGzOMiuXT2lsw6hj3bdB0GlI+Z+9k
         DhjrkGEdNSZw8rlFCGwBhgOKfvVlR+rLnbqhkvxHwpO4/1Wr46o8OE8rKOmFS/0qGaGE
         zLVsa2s0to9f/mvUsBMda/ymXfyHjw3ftFkpxyJOVczqNhnkP+YkL66K8X324ISe40mO
         Z+x8V/CkGgbStZhlMkMNCwhrN5iIeK7buk5I1mAP0j4O88yw02Z5p0AI+HlSzfUNc2qO
         g6hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=r6lU/vjI++3oGE3Aa1eMOTPHATDCSQ8fVLypYTM3sQ4=;
        b=JO4WrhLU7VwtikTx8NoXxEWb1hicyfp+oMmTcbuGKzh87/A3wFBgIRiXWRa3BLdEww
         LNtjsLQ888TqO/t9ieqyj2QQRcLMHOaAM9sVHwBJuDq/XtSBGnpZv+1knetMDq4/+Enx
         ptLJV6r7A7GiHFdUzJQ2B1ipg500qQ1kliaZX1YvVJWyers/fqmwy61QOJpWSwDEoRrm
         K94+7Lv+duB7Pf1O14cgviCZ8FRmZheoYu+wLYFYrrGfmXxlgCQdSmstq2lq7ephb4so
         PDXhpsV5PA4ijCk+O3wk8Up5B8WGhg8D6q/mzQ62MLS5ZCPqvKZSuDAPCGru5GHy6jlM
         IZvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=jytiSxeX;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [51.163.158.102])
        by gmr-mx.google.com with ESMTPS id d3si301613ljj.4.2020.12.11.08.32.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 08:32:33 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) client-ip=51.163.158.102;
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2055.outbound.protection.outlook.com [104.47.14.55]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-25-vqnMVCRJMzedRNraldY5gQ-1; Fri, 11 Dec 2020 17:32:31 +0100
X-MC-Unique: vqnMVCRJMzedRNraldY5gQ-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HcC+A8f//JJoREIvXZa94oklfk6V7rEnM5dEiamK2/uLMNkiCV+MquFhkrLZvYB39DCeearb3XYmK3k75HiJxPiq08m+Y3YraSPZbco63BCZBKaRqiKVn97GfOPOL4NHqTQ2T5D/KHWPOUGea+ZSkkiPJ4ApaiFd3p5mz6e8xvDehBsfl+eYcMljFaJa0yyR1faf4BJt64Gnw+i8gQUX1msWVKUqldOroYJmA4nGp/FFRlr2PwQgXecrHfXaTiTIyZc9413ziU9y7mQJfOLzELNh1c7ve/CG04cOIpwS2uwxkoLpVy0VhvZpW2J6Lxc2NoRDCc2/QOutb7ce7kOk5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r6lU/vjI++3oGE3Aa1eMOTPHATDCSQ8fVLypYTM3sQ4=;
 b=DcuUTHlmm4IvGNQWCShtiZ15tYDcoZNTrkKUK3XS43a51MVaUP9YwujfRV/cw6KIE78XpW29u2Iv6FqqQKafqist1hUSyphXdgygei6qqVmV9skzOSvL4IzqQIdUp18AngHxttbRKoKvPqbG4uJCf+gOxkgi5mVpoV0cpXEcZGsTRilSv05C8/o+/0dj0LV20kkC3nNPy9Tb9D2Z13sP4mD5Xutpj+Im8l4ryV3E4c7exmULTjoploI1TWtD0PWmGpmioDigd7tY99v0Wat3QoVBqT4rvwDi6h3p34eX068yev+y0318dkGNIXx5Q1VmpLrbttA9M5UnFdQR7KhTKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM6PR04MB6695.eurprd04.prod.outlook.com (2603:10a6:20b:d8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.15; Fri, 11 Dec
 2020 16:32:30 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::d0f5:2f85:a7f2:2952%7]) with mapi id 15.20.3632.023; Fri, 11 Dec 2020
 16:32:30 +0000
Subject: Re: [PATCH 00/12] open-iscsi: fix serverl issues reported by Coverity
To: Wenchao Hao <haowenchao@huawei.com>, open-iscsi@googlegroups.com
Cc: linfeilong@huawei.com, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
 Wu Bo <wubo40@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <8affd4aa-63af-f05d-2975-86da75f5ebc7@suse.com>
Date: Fri, 11 Dec 2020 08:32:25 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
In-Reply-To: <20201207015410.48488-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [73.25.22.216]
X-ClientProxiedBy: AM0PR01CA0080.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::21) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by AM0PR01CA0080.eurprd01.prod.exchangelabs.com (2603:10a6:208:10e::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Fri, 11 Dec 2020 16:32:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f8ea183d-b30b-4248-bd51-08d89df25af3
X-MS-TrafficTypeDiagnostic: AM6PR04MB6695:
X-Microsoft-Antispam-PRVS: <AM6PR04MB6695437541AFDDF3C2F6CF15DACA0@AM6PR04MB6695.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E60Ex/NdUO/aPJTz1PzsJvZuxhJ8EHPX7MLzxxGjp2qV0iSpmxhHaGDFdFYNSYSPPZDiL9coqtm5F1OgVkZFFaWZaFPfYlKorL7laUSUqjs59Nek3/yjo8NsFGU+/MTlLvbW1BdiW09xyYsyJEtOuI62uS3yJc3vFwN2lxkRXVkkM7lm/fr2u3Nb4dFKbgnl3C+7qqN4bAQfS43VVFUmXlF2bMED0QSEzTsIeqLIcQoIxXd9l8cxQ0pj1O5F6ADwrBFfNsc63EgozeyYYLtAWrF+OwAX0cqnEA6yX+ceATusbfOSkbYJ0X0btNZ9+dwsF/ul5XD7d02Xky4/KZmofzZurZyZPXbf0oz0nNrNyXfQ6aLiwVbm5XQX57U24UO9
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(366004)(346002)(39850400004)(396003)(376002)(16526019)(36756003)(83380400001)(16576012)(2906002)(6486002)(66946007)(956004)(478600001)(316002)(2616005)(8676002)(4326008)(31686004)(6666004)(8936002)(26005)(31696002)(52116002)(54906003)(5660300002)(66476007)(66556008)(53546011)(186003)(86362001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?MnArYTFNL2tDSTNVUkFGNkFHR3BxVHZTTTVUdDdVUDRjS2ZudHpHV3Z2cHdm?=
 =?utf-8?B?ZEtabFloTnRGSFlKQlVmd0pDUWxnQmxSb0hYaVRRVEdKaHNoblp2UTBDZlB5?=
 =?utf-8?B?TU0reG8ydWVTVVlMUjlhUTZwejQ1QmpqNzNPZ2VIMGh3bkZ3VjMwSUhtNGtC?=
 =?utf-8?B?WUwrOW1NTUllaUlneFBkQUdaVjQwYm11dlFqR2gvNXJxSDRYV3FQNHBYUEsy?=
 =?utf-8?B?Uzg4dzFIWFJIeDJyOXVlbTRNREJhL2JwallYY2xlWGRDYUQxS0Z5RFR3dm0r?=
 =?utf-8?B?a05HQlNKR3lxN3dHMEtrNFloZVFmdGczYTZuOFdubW4rOTlwQjcxaDhyWUhh?=
 =?utf-8?B?U1RKZFNFQlBQQ0o1dk1pUVF2TnUwTW55azZaVWt3QjlLYXZzMkQ2MEczVVNj?=
 =?utf-8?B?d3R2TXpZNjArMEQ4cEJQSklKVU56bVpLNVJ1OWxIYWZXWWRTQ1IxMkFXbmk1?=
 =?utf-8?B?Mm5VT2dONFJTK05tc0Q1THVCMkV6ZGx1Y1ZMaDFQOUtwODVXNlk2Ni9QSnNH?=
 =?utf-8?B?SC9WdEFHSmo1NzlaYjNNTW5BMFo4WEFOTWdTaGdEZUJOay9uZm1CQ1lRVkhV?=
 =?utf-8?B?Y0puVEpsWHAzQm5YYURPZHFBOGdDbzY4QkNlQkZNUFEzWTVENEhpUmlMVTJM?=
 =?utf-8?B?KzlzRTRtdUlyVjdWOENQVXhBbExEUnFrSFFLaHFIQ3BYT1lHeEZnWXIwdi9E?=
 =?utf-8?B?amRpL2UrMldNMFQrdE5yYW91LzVlRUFjMVhZS2NGWE9SM2o0MjhYNnZjSEF0?=
 =?utf-8?B?OENacGRONFJxbGhlclNTNytPUFlWcFArZC9TNmlzaDBucEhVZzBDRFFnNTk4?=
 =?utf-8?B?WGFybWUyd3N4TEgxcVRtdUIzVERZZ3B4S0dvcG5YTVVoYndhRFJDdXBHWEFL?=
 =?utf-8?B?d2s5M01PbGR0T2FFT3FOdjQ0eFg4VDFUWVdWa3o0VkhZN3ZiS2Z3L1pCVEdz?=
 =?utf-8?B?bXNaQlNJZWJORGtkYWhsS215VmFtalVLZXNuNUJ4dUI4VHFpam90NlNQZHUw?=
 =?utf-8?B?MHZsWGtOZkY2WXovY2hlS3ZtcGtZSUtlUHBaR0hMYTA0WHYvRmJsSlI4Z2h5?=
 =?utf-8?B?Z2FvdGNnckxGbEhBWXphNDhtZFhiZXBnMVM5b1NzdEFUbXRnazUzaUlNK3pD?=
 =?utf-8?B?blI5M1ZUbzhTbVYyTFhpMUprSm0vc2ZvOXg0ZmluSVEyMlJZVUdMTE5MVkxj?=
 =?utf-8?B?V0poNWpmZDhCd3JVZHdoYmlBRXdWZnRYS3VqNk51SVhDalhSbnI3S3hpbkxO?=
 =?utf-8?B?bjRLU2RqbVpxYytvaWRjVWlxd1VSQkxGNzdDVE8yNHcxZmlkTTQ3d3hyaWt6?=
 =?utf-8?Q?nyVDNtMgH5ZtA=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 16:32:30.5685
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-Network-Message-Id: f8ea183d-b30b-4248-bd51-08d89df25af3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9P+Gujm0QnIMuP8mq9hGGvS25ecSuTFgZ0d8mTuuqPZVrpB4gbmJyJbu5FrhAPVmO3yITXKjU7RBYFXsBCkahw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6695
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=jytiSxeX;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 51.163.158.102 as permitted sender)
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

I have reviewed a couple of these, but you need to submit them as pull
requests to github.com/open-iscsi/open-iscsi.

The "reviewed-by" tag I replied to a couple of them really isn't needed,
as I'm the one that will be merging them (or not) on github (sans Chris,
my co-maintainer, who sometimes does that).

On 12/6/20 5:53 PM, Wenchao Hao wrote:
> Recently, we use Coverity to analysis the open-iscsi package.
> Several issues should be resolved to make Coverity happy.
> 
> Wenchao Hao (12):
>   iscsi_sysfs: Fix NULL pointer deference in iscsi_sysfs_read_iface
>   iscsi-iname: Verify open() return value before calling read()
>   iscsiuio: Fix invalid parameter when call fstat()
>   open-iscsi: Fix invalid pointer deference in find_initiator()
>   open-iscsi: Fix NULL pointer dereference in mgmt_ipc_read_req()
>   iscsi_net_util: Fix NULL pointer dereference in find_vlan_dev()
>   open-iscsi: Clean user_param list when process exit
>   fwparam_ppc: Fix NULL pointer dereference in find_devtree()
>   sysfs: Verify parameter of sysfs_device_get()
>   fwparam_ppc: Fix illegal memory access in fwparam_ppc.c
>   iscsiuio: Remove unused macro IFNAMSIZ defined in iscsid_ipc.c
>   fwparam_ppc: Fix memory leak in fwparam_ppc.c
> 
>  iscsiuio/src/unix/iscsid_ipc.c   |  3 --
>  iscsiuio/src/unix/libs/bnx2x.c   |  7 ++++
>  iscsiuio/src/unix/libs/qedi.c    |  7 ++++
>  usr/idbm.c                       | 14 ++++++++
>  usr/idbm.h                       |  1 +
>  usr/iscsi_net_util.c             |  6 ++++
>  usr/iscsi_sysfs.c                |  2 +-
>  usr/iscsiadm.c                   |  4 +++
>  usr/iscsistart.c                 |  5 +++
>  usr/mgmt_ipc.c                   |  5 ++-
>  usr/sysfs.c                      |  6 ++--
>  utils/fwparam_ibft/fwparam_ppc.c | 57 +++++++++++++++++++++++++-------
>  utils/iscsi-iname.c              |  6 ++--
>  13 files changed, 102 insertions(+), 21 deletions(-)
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8affd4aa-63af-f05d-2975-86da75f5ebc7%40suse.com.
