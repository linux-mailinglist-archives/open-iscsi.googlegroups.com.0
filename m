Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBEUF2SOAMGQEZM75D2Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9D56490ED
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Dec 2022 23:05:10 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id x18-20020a170902ec9200b00189d3797fc5sf7077541plg.12
        for <lists+open-iscsi@lfdr.de>; Sat, 10 Dec 2022 14:05:10 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1670709908; cv=pass;
        d=google.com; s=arc-20160816;
        b=OtxDKaf7vY7jnxfhsipccRrSArDbrSG5PyhStnDKMQEvirUnL6bMgbQjYL8F1x+gZ8
         rdCWBnKJ8UEbWSFqs3FC434p7yKR9+TVLmwMuxlRy/Z3DpQ3Mt6ByM1qcYFkZpLifQ0b
         IXlvHYrd06/Kk0wOydiQ50o1a1OKD8mdOQibzwjZzl5x7HY8anE9AC0L5VdrkIO6QdZL
         m2i7HAwMBXSXpao2/GibBCqtwgpn+eE+q75zjoCcsvdhBKomHgv3U4TxWZjT8aDSljyn
         TWy15E4PqIANYnUjhFTwA6GLGLm+PpzhzAOUMQMexA0CxvxzymgQZtMuMR6/d7dmQ45o
         8rQA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:to:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=lA/ONse+zamO5yWZo/KG2dLCHXQ6INe5Gr7KC4AirmQ=;
        b=F2H8TLuhdFIrauBe86/3eLAN6XSiJ7gFybO8pmyfBBnalMOvQJDr+akGfKd84fmFOJ
         zazRIdMTXBN3guID2RqZuA5J/rZBWzV9+b8kxiBO3PbG4G0AEZ6GVwKRGz0hQ8T/GSQF
         uo9InLnJXfz4dvwpIgEK09QpIyCOLL9LJLDdcWCOs4zjUmnGyRRur6POK9n3s0YYq/a3
         LVLNSqU0r5DUUlTfEBqdodQbjYq+OmVlbbbLK6EcEhLpi6rfmaDTrk1FqsarNilubksj
         ODtXdJUD1NJJQ0eZxG1jVWv4JLOJ0nOtBcAmULG3qc+D3it24WUT2q8JAugR1JQy09c+
         bjxA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b="RyMXl/sS";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="CGmBxe/f";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:to:subject:user-agent
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=lA/ONse+zamO5yWZo/KG2dLCHXQ6INe5Gr7KC4AirmQ=;
        b=WJkLIGaS7wRdu2cvIc/gt/HNduuLIeUsk1jb9XCxAryOOeUTAzD83K9aauNaUTdtzk
         CtbM5YYB4m1kbKNdJ/YU1nWEIkDk8nZo6PrZsbR6RXUwh2OSk4Zuc/e+i/6sYtgzOGaA
         mpqTQ+wgdo3gbsWy0ki+vyONHQHZ0kfze9qr66M3ikk3ycSazy46RmxRFBlcBMmtDRfb
         PNwgXosrPuO12VUfXgEmgUlB/TS4ZuyHxIaiNTs0r3BINGz4yXPvsFg6q9KziVizgb2W
         ZI2iQuC9KfGD/xybvkOc7Y94+Q1tRsav60vM4PC6to4nINKuc5voZZ/1TarBRFrVs88g
         9fyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:to:subject:user-agent
         :date:message-id:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lA/ONse+zamO5yWZo/KG2dLCHXQ6INe5Gr7KC4AirmQ=;
        b=3pm4HFalfdxUY0uq4klz557YArto/N/UZcTn9yr2xGoKJid+i2g5d3I6yp9ODW0kAd
         yXPA1lLO889XRENoKIX7FSou9gWUUMIpXznEOrKFyS1VUTRljwbEs6Ze3roZZSEJfXHp
         V7RCA3NtVBz4TF8M9uXZNThAE2gEBIcpkd78fJgA/ja6qLAKi6nwIt7mZFXrfcicRKTX
         VO0MUZAX/HEX02pQkAooG+2rwc8lSQp9t1dcx+pb5HdzOVFIo/b5cvgOBUSJA+/e+1L0
         hlzVDCcRWu3BhkCffkYkkTHmWcWabGqaNGbhj2U2qXyhDSUNif70Fdl/7c8QBvbGksYf
         0+9Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnE0reVOKA1fxbXvCWQBlx91/vTAfs1c3cJexqdR6aFc/Q4WhTg
	TrAT0Kdq3Hy/+nXTOq8nvSg=
X-Google-Smtp-Source: AA0mqf7brWgUITxuvmDCD8sNyHqaiJh+mEsnQzoBy6Vn4g5/qVKwSxGUKzhBUcfyUecTVblnHR7BJg==
X-Received: by 2002:a63:5762:0:b0:45f:97e8:d8a7 with SMTP id h34-20020a635762000000b0045f97e8d8a7mr86504378pgm.426.1670709908219;
        Sat, 10 Dec 2022 14:05:08 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:7b86:b0:188:62b8:814f with SMTP id
 w6-20020a1709027b8600b0018862b8814fls11410468pll.1.-pod-prod-gmail; Sat, 10
 Dec 2022 14:05:06 -0800 (PST)
X-Received: by 2002:a17:902:8d82:b0:189:3800:ca34 with SMTP id v2-20020a1709028d8200b001893800ca34mr10376156plo.30.1670709906207;
        Sat, 10 Dec 2022 14:05:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670709906; cv=pass;
        d=google.com; s=arc-20160816;
        b=kFHgTW4y5y7rRbc2ezvX1xJL5vGCgbI1wqfjLZyPX/7W5Lg5GonTGPyTft+hIdheRy
         2DgaRRwHE/h3pcUywmAi5JM3NcLlafykp959R+UwrvImXFHNjUE/9yjrbtTHryBppfQT
         oE7CkjkTrSO47eSnDk2lLttG3H+HmyGLF9hPsD3ZWQOmEiffoN8zSLxCWgKOazwYmwy8
         iQ53JutIXpBpBCEIWuqvPty16vy9dJaObNLVlsp/AmXSQrtsiSaFfG/gOmACasB1A4b3
         Zz3RqdcMriOn5TuWm7MFw7rNs3BeaOWctnDHp06yt8j0qEMIxiB49HZKWBvvSL8MPnMc
         HWSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:to:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=voKTJi3HY8b+kugqzLW6Aeg3HVzgHVv2/Hus2dvKQEI=;
        b=J+jyIbwXO9rBz/NiJ3RJxhKInlVknZOuSnEYD/SWypRw7R5VwZZvtCNvWet5yPsprh
         Dcu+MEu5vbElJPJ7tjBu2y8XC7gAylJvgCOOwO+SY/L+/4PzvtnlEpg+fBmq1fBgEHQ5
         oK0kDuA7U8Qd7DKQmwPDT57p2G1suEfgq1zWuNgpvniPX04VY5WVV4aUdIKqY50CFZTv
         yDUOB0Xp0qs5vk96IM8+ya6ygG6X7+v6tc22DXM8BCwEMNSmLN/5uYHdKoXaXiF0cDC0
         hEvi32GLLD78GRJpucBQAfVTczFFDUYcyDb1WPscPADere+ng1Zi1JB8dqT4+GWd6q2t
         /fNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b="RyMXl/sS";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="CGmBxe/f";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id w3-20020a170902e88300b00178112d1196si347985plg.4.2022.12.10.14.05.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Dec 2022 14:05:06 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BAJ1wqo022707;
	Sat, 10 Dec 2022 22:05:05 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3mcjnsrnt8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 10 Dec 2022 22:05:05 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2BAJ0IfE014056;
	Sat, 10 Dec 2022 22:05:03 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2108.outbound.protection.outlook.com [104.47.55.108])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3mcgj8ar1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 10 Dec 2022 22:05:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F9SBC2+PY/Y6IFfVdTpo+7KkDvSQpYDFxtpQtfwY2p4CHOozLn1FQyYm99C9eZCCjkn61drkLJ8U6GpkS0LIUEcKFwn+n8YZsuHyNGkX18hKDyj7BsQiXZ4f6K0SKDYxBqT0TK+yx1YKmVR2MUPe+9OJ8fniEW6kDNyvKBprYlChLKoj4sxmVLLaaB6tQwwhDULze0Bnib5+sPrrGaUF80CKFgLBwVr+Epx61lzc/F2pG2NaUhzxfZNUOt8+qqd1D32mXrBeFqmWWaCEAsdnMJXptcGvz5bM1ZuoccyYlzZFXC29xlVlYlIZJoyF2QmHH9taHblQ373jM/jdMSWbNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=voKTJi3HY8b+kugqzLW6Aeg3HVzgHVv2/Hus2dvKQEI=;
 b=EV/eHHhNiyVN5PpyBBMqQvXbWJMZJWPuEmS9eOrOHwx+eEQZ41Zzl7GPWz4daLm9yh6wuOa3mvXhkY8iG9+pdEsx79owWNv3cXl6Xow2dd+E/3NPQDIWpFMmkgAXjKYr6qXpA/oaDdg4b1fQQysJoxxk6xwyTLUOT98OqbY2UW3SF6HMQWnxzV9yW0CghQGY9GMnUzWfwZeVrLDR17ZB3YdBhlLSAAUq4rEdyQ22aLHCe+WAQmKF6TwA//mO75fg7OjrRHOIOEiMnJI/31renKuw/nmmWPr3Y5ehQAIZRwOig+Ly48lE0jk2QEoLGFLrr6tKcCXaiI0H1bCEi5VJTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CO6PR10MB5588.namprd10.prod.outlook.com (2603:10b6:303:147::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.19; Sat, 10 Dec 2022 22:04:56 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372%7]) with mapi id 15.20.5880.019; Sat, 10 Dec 2022
 22:04:55 +0000
Message-ID: <ae9ee90e-e890-e054-6cf9-8acadd6012b9@oracle.com>
Date: Sat, 10 Dec 2022 16:04:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scsi: iscsi_tcp: Fix UAF when access shost attr during
 session logout
To: Ding Hui <dinghui@sangfor.com.cn>, lduncan@suse.com, cleech@redhat.com,
        jejb@linux.ibm.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221209082247.6330-1-dinghui@sangfor.com.cn>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20221209082247.6330-1-dinghui@sangfor.com.cn>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH0PR03CA0080.namprd03.prod.outlook.com
 (2603:10b6:610:cc::25) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|CO6PR10MB5588:EE_
X-MS-Office365-Filtering-Correlation-Id: 4188e681-faaa-4c1b-0c3e-08dadafa91c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D87CF7lJ7wq2R6D7qGQNrLoCTzzzfQifUwjOc7MymgAMyDKZrUqPs0LKI2LjPe81ATFpHKXNbLOA7XRuAgVswLtauDRO35eFQlQ1ZyzPy1DUn8ny3/Krwun2AN0SJQv4+jW7QDvRQVWoeaGj2oYsNjM1f1PrrNSSynloyVX03PbqzZieuifg5a7uOtFgpj84G5tFh+IruGEIhOYApb2OvJEHHfA/iLneTycJJh5DcX0Xz22M8rQA9I76Jc3D3+qrrovKX/glr50eIspDb/xneYb0L+ooesJ9A5LYmlNBDKhyZ/ZL39OM8mrFa+gFI9BUEYrXE54drf72bzjmXYL3AGRbOovYEU39/gqPZB8+N/evVh+nWTapysLwISlmUPXn5wOFDlzlHtICHLubV5f1Z2+Vu82xcCkZfLYvM6Es5v5IMCY90LblpbEYvbKFn6E97bL5AiNmRTe4GHvriefLCU9nivwlEq6g+CyNNUcMhKMIDp4tcjZnPOJ2sGeUIUpdsH/PH+gIA2QaVJaqhwRjEXcPk2ryJfPK2/60q9xrcnW8d9ItIgL/ihdY/EG6stH7U14/Y3CymWF6w5KzqDd4NcBAQbP6zRONcMFgJCVEBWeJLGqk9upUUXPH4QNxkNCxfH4uY4DzbOF7qeJoH51c57jL2+MbSMKST+L4luILJzepZwnms8mxPhqkEZPXlJ5aw3SEGZfAFcd7fWTB5ofp+9vkIWZoIjke7OfotuUoMyM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(136003)(396003)(39860400002)(346002)(376002)(451199015)(83380400001)(31686004)(2906002)(6486002)(478600001)(86362001)(31696002)(36756003)(2616005)(186003)(38100700002)(5660300002)(6506007)(41300700001)(26005)(8676002)(6512007)(53546011)(8936002)(316002)(66556008)(66476007)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0w0UkJ1Qm5WTTEwbHNxR2JMK2NDR2xQMDFkZkdXRHNhMDJGd0NvRjNVeXRr?=
 =?utf-8?B?SzdtaUx4YmRjZVp5L2MyeUJGNjFibUdrWWZxYU01cVpuV05tdk1ZQmpCaHlC?=
 =?utf-8?B?VUxvUzFyNzhuYTc3ZWpmYkRURVJaZ1pwUEFWY1hVYzdBSUhmY29ld2FncjZH?=
 =?utf-8?B?eno1K2k3bFAwUkJPSWtzdEp5RVNOaWVLdXJDTFVaa1lCbnp2WGhZaTNkWkwy?=
 =?utf-8?B?dFpRMGNmUWZIZHl2SnVyNmdTYUpnZlhrTnBiM2dPQlNsajJIVjlTa2draTda?=
 =?utf-8?B?VllKZjU1ZmliZW04MWlDM280MVFhUFFxRXVxbFp4MnFLOGFBb1JmT0l6ZWpj?=
 =?utf-8?B?TndRZ0VHTXp6c3Q3UENEcVA3S3lnVEJTRExtOHZDVldFejJiWUp0Z1FOU3d3?=
 =?utf-8?B?Vmo2SWVSL0Q3V1lHbUJJbG5xR09nUTltNnhyWVJiZGRYTjF1S0NvQ0pYaFZS?=
 =?utf-8?B?TmJ3bDU3YjdRd3Zqc3ZCUkg1OHFvZmdjbyttTDd1UWVrNVdkenA5YUo3YVFZ?=
 =?utf-8?B?empSOHBnajQwVjQ2TjByR3pVVk9vaUVDZlFDN2k3aVFvV2RnZXF0VmdyM2xE?=
 =?utf-8?B?VmlrSDQvNXZSa20ydEgveVdhMnFJOVJveCtsaFpEZ0pqY042UDJCcTkrNVpG?=
 =?utf-8?B?SHhQckh6UWpWVmxtL0paWWM0SnpPSnk5Z0lMWHFzdnN5UkJmVGRDSGZxVDlx?=
 =?utf-8?B?M0Y3T1d6b005QnFOUUJpZ3FuMDhrZXJmUE1KQU9DYWplSjZwUFhreCtPMFI0?=
 =?utf-8?B?cVhMa1YyNHNDTnJybGJGOWVjK0Jzd2FBM3VIZE10SkE3U0dmcTZTaGpLUzdh?=
 =?utf-8?B?VjFsZkpQRVBUNWgxQWplT3BrZjZSRHVhd0ZJaFc4T1FJeXhDSmhyb0ZDUlVD?=
 =?utf-8?B?TFBNV2ZmeE5RREttKzlzbkRRQVFuNHVZZW1sU3NqSXhzMVdTMTF3VVZhY1gx?=
 =?utf-8?B?dnU0SE1rVEN3azNJZ1gwWkVZZDNqNFBhYmZieHE4ZXV6czVDTVd4VCsvMjVU?=
 =?utf-8?B?bEo2cC9qNGJUSDl1aHcwM0N0TENsVmVHSEhqY3ZwOWVxcmNGTkUzM25HWlBH?=
 =?utf-8?B?dGRxSnBMbkhnN3lOUmNhVHY0UVhLYkl0TmlUZ3BJcUJCakkxMkxkclZQcE1Z?=
 =?utf-8?B?VytwZDBVM3I2VjJXV0pwNkQzdUk3YzFUdXY2RWN2VUEzZEFGYnhTYlVMaTVH?=
 =?utf-8?B?REt2eVJtVjZKRWd1eVY2OThncXNTSjlWTmlTcXpETVUvV3ZOMEhZaHNZSVkw?=
 =?utf-8?B?b1hKakZTbm5ZeU1zMFdkM0I5RVc0R2NWWjQzUEhZUnpSakgzbHdOcDYvK0Vw?=
 =?utf-8?B?ZUZ4WWsraWRrd2RodnBaaGZiWmZJelBJcWp5eUNYVGpHRUI1T0NHY0VrZU93?=
 =?utf-8?B?VzYvZ2JLYThiLzd1cmw4Z2E3WUFzZ3V6MkxTVzMxdkNPMnJBaUtNRmJIU0NU?=
 =?utf-8?B?R2syMGxKcmlrTUpZRzdTVkd4TFg3Mll1clRtUytLOFB5cjJlbFhqVVFqRWFr?=
 =?utf-8?B?TmtnQmRkQmltbGJ6MzFhOVRwRk0wVmhRR3FCNG5sc2FKVWxmMXhsRDA3aUdM?=
 =?utf-8?B?QzI5V04zemFzU2J6NFkwUWg3UXlyM1YvSUVnNmtPYnpKTldGQWg3QmJpSi83?=
 =?utf-8?B?ZXdoSmtxYlc2aWlJRWd1TzVXZ2g2U1piTEQrY3lJcURlQXFISS80aVJ3K1RN?=
 =?utf-8?B?VlZTdW1OcHVjcVFuWm5vK0ZkbWE0Y0FxbVczTHRSeVdHU09POFd0RnRieGhq?=
 =?utf-8?B?Q3MvbFFReWJFYkJGT3JmTkZaNHR5RnhVUlE3UWFjWjQ5T0dpVG9xUWZBLzVr?=
 =?utf-8?B?NzJsTWwxTDgyUUt1b0drMmlEbXZReXJKZHRjVDhZOFF2Rnd4bDFrYlNnRThv?=
 =?utf-8?B?RXd2QVJqQXdGMXU4UEVVQ1c2MmxRMm5YK1VLSVl5dFlzbW1vMTFUVy91dFZ3?=
 =?utf-8?B?UGhMOXZLTjd0YlFiWGdHR1kwVndFcjd3UWxxbkdlT1NuLzBEemJCWGVtT2pp?=
 =?utf-8?B?MFEwTmdPNlQ2Y0Q0MFdXa0FqUnJDL0g5bTBNZ1MzbU5mTHVsVENMV0hNOFZ4?=
 =?utf-8?B?c3N2MC9pcFIxVGpJVmNUdFFINEpETnVsdTRxQnVlWWhHdVZLMEd5a2ZKY0l6?=
 =?utf-8?B?QjBmU0ZYNlhZc09ZRVpnUisyWGZOZDNhaEdROGRXODE2VW9oNzlpUjRIS21j?=
 =?utf-8?B?U2c9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4188e681-faaa-4c1b-0c3e-08dadafa91c0
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2022 22:04:55.0339
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CMa4kjLrhIDxq06QkpEz75vdIXwPpT0g80YPAVCe6KCDQbe5MoLFqiw6yNWoHH3kiMiL/bhslf5oe3xf2cbRwSAYaONLmqtivQQ/AXxp4n4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR10MB5588
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-10_08,2022-12-08_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2212100204
X-Proofpoint-GUID: uYiObBPwFGxV3j0M8pPuAHzyjZlsOEVV
X-Proofpoint-ORIG-GUID: uYiObBPwFGxV3j0M8pPuAHzyjZlsOEVV
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b="RyMXl/sS";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="CGmBxe/f";       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 12/9/22 2:22 AM, Ding Hui wrote:
> During iscsi session logout, if another task accessing shost ipaddress
> attr at this time, we can get a KASAN UAF report like this:
> 
> [  276.941685] ==================================================================
> [  276.942144] BUG: KASAN: use-after-free in _raw_spin_lock_bh+0x78/0xe0
> [  276.942535] Write of size 4 at addr ffff8881053b45b8 by task cat/4088
> [  276.943511] CPU: 2 PID: 4088 Comm: cat Tainted: G            E      6.1.0-rc8+ #3
> [  276.943997] Hardware name: VMware, Inc. VMware Virtual Platform/440BX Desktop Reference Platform, BIOS 6.00 11/12/2020
> [  276.944470] Call Trace:
> [  276.944943]  <TASK>
> [  276.945397]  dump_stack_lvl+0x34/0x48
> [  276.945887]  print_address_description.constprop.0+0x86/0x1e7
> [  276.946421]  print_report+0x36/0x4f
> [  276.947358]  kasan_report+0xad/0x130
> [  276.948234]  kasan_check_range+0x35/0x1c0
> [  276.948674]  _raw_spin_lock_bh+0x78/0xe0
> [  276.949989]  iscsi_sw_tcp_host_get_param+0xad/0x2e0 [iscsi_tcp]
> [  276.951765]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0xe9/0x130 [scsi_transport_iscsi]
> [  276.952185]  dev_attr_show+0x3f/0x80
> [  276.953005]  sysfs_kf_seq_show+0x1fb/0x3e0
> [  276.953401]  seq_read_iter+0x402/0x1020
> [  276.954260]  vfs_read+0x532/0x7b0
> [  276.955113]  ksys_read+0xed/0x1c0
> [  276.955952]  do_syscall_64+0x38/0x90
> [  276.956347]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> [  276.956769] RIP: 0033:0x7f5d3a679222
> [  276.957161] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 32 c0 0b 00 e8 a5 fe 01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
> [  276.958009] RSP: 002b:00007ffc864d16a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
> [  276.958431] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007f5d3a679222
> [  276.958857] RDX: 0000000000020000 RSI: 00007f5d3a4fe000 RDI: 0000000000000003
> [  276.959281] RBP: 00007f5d3a4fe000 R08: 00000000ffffffff R09: 0000000000000000
> [  276.959682] R10: 0000000000000022 R11: 0000000000000246 R12: 0000000000020000
> [  276.960126] R13: 0000000000000003 R14: 0000000000000000 R15: 0000557a26dada58
> [  276.960536]  </TASK>
> [  276.961357] Allocated by task 2209:
> [  276.961756]  kasan_save_stack+0x1e/0x40
> [  276.962170]  kasan_set_track+0x21/0x30
> [  276.962557]  __kasan_kmalloc+0x7e/0x90
> [  276.962923]  __kmalloc+0x5b/0x140
> [  276.963308]  iscsi_alloc_session+0x28/0x840 [scsi_transport_iscsi]
> [  276.963712]  iscsi_session_setup+0xda/0xba0 [libiscsi]
> [  276.964078]  iscsi_sw_tcp_session_create+0x1fd/0x330 [iscsi_tcp]
> [  276.964431]  iscsi_if_create_session.isra.0+0x50/0x260 [scsi_transport_iscsi]
> [  276.964793]  iscsi_if_recv_msg+0xc5a/0x2660 [scsi_transport_iscsi]
> [  276.965153]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
> [  276.965546]  netlink_unicast+0x4d5/0x7b0
> [  276.965905]  netlink_sendmsg+0x78d/0xc30
> [  276.966236]  sock_sendmsg+0xe5/0x120
> [  276.966576]  ____sys_sendmsg+0x5fe/0x860
> [  276.966923]  ___sys_sendmsg+0xe0/0x170
> [  276.967300]  __sys_sendmsg+0xc8/0x170
> [  276.967666]  do_syscall_64+0x38/0x90
> [  276.968028]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> [  276.968773] Freed by task 2209:
> [  276.969111]  kasan_save_stack+0x1e/0x40
> [  276.969449]  kasan_set_track+0x21/0x30
> [  276.969789]  kasan_save_free_info+0x2a/0x50
> [  276.970146]  __kasan_slab_free+0x106/0x190
> [  276.970470]  __kmem_cache_free+0x133/0x270
> [  276.970816]  device_release+0x98/0x210
> [  276.971145]  kobject_cleanup+0x101/0x360
> [  276.971462]  iscsi_session_teardown+0x3fb/0x530 [libiscsi]
> [  276.971775]  iscsi_sw_tcp_session_destroy+0xd8/0x130 [iscsi_tcp]
> [  276.972143]  iscsi_if_recv_msg+0x1bf1/0x2660 [scsi_transport_iscsi]
> [  276.972485]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
> [  276.972808]  netlink_unicast+0x4d5/0x7b0
> [  276.973201]  netlink_sendmsg+0x78d/0xc30
> [  276.973544]  sock_sendmsg+0xe5/0x120
> [  276.973864]  ____sys_sendmsg+0x5fe/0x860
> [  276.974248]  ___sys_sendmsg+0xe0/0x170
> [  276.974583]  __sys_sendmsg+0xc8/0x170
> [  276.974891]  do_syscall_64+0x38/0x90
> [  276.975216]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> 
> We can easily reproduce by two tasks:
> 1. while :; do iscsiadm -m node --login; iscsiadm -m node --logout; done
> 2. while :; do cat /sys/devices/platform/host*/iscsi_host/host*/ipaddress; done
> 
>             iscsid                |        cat
> ----------------------------------+-------------------------------------------------
> |- iscsi_sw_tcp_session_destroy   |
>   |- iscsi_session_teardown       |
>     |- device_release             |
>       |- iscsi_session_release    |  |- dev_attr_show
>         |- kfree                  |    |- show_host_param_ISCSI_HOST_PARAM_IPADDRESS
>                                   |      |- iscsi_sw_tcp_host_get_param
>                                   |        |- r/w tcp_sw_host->session (UAF)
>   |- iscsi_host_remove            |
>   |- iscsi_host_free              |
> 
> Since shost hold a pointer to session which is belong to cls_session by its
> priv tcp_sw_host, so we should get a ref of cls_session, and after
> iscsi_host_remove() the sysfs is cleared, then we can drop the ref.
> 

Nice bug report and thanks for the patch. I think though we should just
split the removal from the freeing. The removal will wait on users
accessing sysfs files for us, so once they return we know we can just
free things.

Something like this:


diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 5fb1f364e815..751e4b19798b 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -982,10 +982,12 @@ static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
 	if (WARN_ON_ONCE(session->leadconn))
 		return;
 
+	iscsi_session_remove(cls_session);
+	iscsi_host_remove(shost, false);
+
 	iscsi_tcp_r2tpool_free(cls_session->dd_data);
-	iscsi_session_teardown(cls_session);
 
-	iscsi_host_remove(shost, false);
+	iscsi_session_free(cls_session);
 	iscsi_host_free(shost);
 }
 
diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index ef2fc860257e..235957de1164 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3104,17 +3104,27 @@ iscsi_session_setup(struct iscsi_transport *iscsit, struct Scsi_Host *shost,
 }
 EXPORT_SYMBOL_GPL(iscsi_session_setup);
 
-/**
- * iscsi_session_teardown - destroy session, host, and cls_session
- * @cls_session: iscsi session
+/*
+ * issi_session_remove - Remove session from iSCSI class.
  */
-void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
+void iscsi_session_remove(struct iscsi_cls_session *cls_session)
 {
 	struct iscsi_session *session = cls_session->dd_data;
-	struct module *owner = cls_session->transport->owner;
 	struct Scsi_Host *shost = session->host;
 
 	iscsi_remove_session(cls_session);
+	iscsi_host_dec_session_cnt(shost);
+}
+EXPORT_SYMBOL_GPL(iscsi_session_remove);
+
+/**
+ * iscsi_session_free - Free iscsi session and it's resources
+ * @cls_session: iscsi session
+ */
+void iscsi_session_free(struct iscsi_cls_session *cls_session)
+{
+	struct iscsi_session *session = cls_session->dd_data;
+	struct module *owner = cls_session->transport->owner;
 
 	iscsi_pool_free(&session->cmdpool);
 	kfree(session->password);
@@ -3132,10 +3142,19 @@ void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
 	kfree(session->discovery_parent_type);
 
 	iscsi_free_session(cls_session);
-
-	iscsi_host_dec_session_cnt(shost);
 	module_put(owner);
 }
+EXPORT_SYMBOL_GPL(iscsi_session_free);
+
+/**
+ * iscsi_session_teardown - destroy session and cls_session
+ * @cls_session: iscsi session
+ */
+void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
+{
+	iscsi_session_remove(cls_session);
+	iscsi_session_free(cls_session);
+}
 EXPORT_SYMBOL_GPL(iscsi_session_teardown);
 
 /**
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index 695eebc6f2c8..5cdeff776ce2 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -422,6 +422,8 @@ extern int iscsi_host_get_max_scsi_cmds(struct Scsi_Host *shost,
 extern struct iscsi_cls_session *
 iscsi_session_setup(struct iscsi_transport *, struct Scsi_Host *shost,
 		    uint16_t, int, int, uint32_t, unsigned int);
+extern void iscsi_session_remove(struct iscsi_cls_session *cls_session);
+extern void iscsi_session_free(struct iscsi_cls_session *cls_session);
 extern void iscsi_session_teardown(struct iscsi_cls_session *);
 extern void iscsi_session_recovery_timedout(struct iscsi_cls_session *);
 extern int iscsi_set_param(struct iscsi_cls_conn *cls_conn,

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ae9ee90e-e890-e054-6cf9-8acadd6012b9%40oracle.com.
