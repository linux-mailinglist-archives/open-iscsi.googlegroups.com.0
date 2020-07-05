Return-Path: <open-iscsi+bncBD54HHNYIIIK5WME7ACRUBGHE5ATA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id D039421497C
	for <lists+open-iscsi@lfdr.de>; Sun,  5 Jul 2020 03:28:14 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id y133sf25813312lff.20
        for <lists+open-iscsi@lfdr.de>; Sat, 04 Jul 2020 18:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:in-reply-to:content-language:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u0nvF5wrXKP/nh6gDWVIO3OLP/Z6eggcpkslfNKNFYc=;
        b=jmxJ4Vv+u3Nkfahz4Hf6q7YvFzinfhsLe3uuM1ZbNVvMWhOhKK+VkqpYTXUF0iq/P5
         5N+tm4gywwZZmW+IioMQ5QncXgtTeJ30sYLo3UeH2QjZQwsnEj5EL9Ubp85nL2Se4rqq
         T7B4es9TQ4oKIl+CKWQ6aOvyQfPn1ThDrvgu577/M30mAZ5/vo0g7Rf4u0oF4QTX3lB6
         Kz522lJiitoUQxJDo5anqwUVjAO1Uma1hlMZLWNwQ8XmyZsrlArj1s5XHMckaTEWheAl
         FoMxxuN0KGuoeOQHnRxfq+dtcst/AsHAPlaZHFKoKrzTMCWF4W09bmqte3HEpMmQPywR
         Tb6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:in-reply-to:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u0nvF5wrXKP/nh6gDWVIO3OLP/Z6eggcpkslfNKNFYc=;
        b=lK2CovMXXCDOASx1GTfPf5o+zQrxLDQwotUlThOW3u2zyGTSgguBkEqi722USEyuWy
         P85MiNHlr+My/EiCgD0TMIRy8ob/DjjMmyNHXVm/5Q+erKTir7IDJSDvpw8nfY/MULpL
         73iZI5WC80+wqltT2y2uarlJVQFd5tJgEnqS6Gr/Q0MCYG1vMbZsoXx4Kx8mf1wBWIi4
         FzeuOvx6ogYlnwokqXT9x6lXLlWijhp35ZM4saZtdi7dNWJSsCG3sRCAyO/sj86Z1Ain
         DCcq3xiekCs5VbrZdGZh+2LAqNsLiZUzQbBCUAE7oysUY9lkb58atCRLzzLc21R80SsW
         yNfg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532bWebfaaV/TvqkbwnI06dZ6PG3zKoVB0SRKQUsJW5t57lH2mld
	cVK27qeYTJvSBCrv1aX4EZI=
X-Google-Smtp-Source: ABdhPJz1nAmZdFyoNwZ4SXtVEHpmtC6ewby6PqG1eWEjClZoizSbUiAGNza0r7lvgcktojpvH1Igtg==
X-Received: by 2002:a2e:a375:: with SMTP id i21mr19833653ljn.403.1593912494300;
        Sat, 04 Jul 2020 18:28:14 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:b4e1:: with SMTP id s1ls566328ljm.1.gmail; Sat, 04 Jul
 2020 18:28:13 -0700 (PDT)
X-Received: by 2002:a2e:b4ed:: with SMTP id s13mr8038239ljm.296.1593912493759;
        Sat, 04 Jul 2020 18:28:13 -0700 (PDT)
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [51.163.158.102])
        by gmr-mx.google.com with ESMTPS id z3si845480lfe.5.2020.07.04.18.28.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Jul 2020 18:28:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) client-ip=51.163.158.102;
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04lp2051.outbound.protection.outlook.com [104.47.12.51]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-27-OLcrUZqWMv2IKFOlekNt_A-1; Sun, 05 Jul 2020 03:28:11 +0200
X-MC-Unique: OLcrUZqWMv2IKFOlekNt_A-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eEQMcaSFStrvXPu8IKHLd42DRH5j7fU2clPdVsQyc5JJXN4k/estSX+IAUJiCCT2rhzdY2LeHXDeUxFX/74pmVHhERpq0e3IgCFKMGbwVnvaZIui7sn28qQQlP1BQ2dUa4ZRMKhllocphGSuw2hrv2j1gGKw6h90VwFapkDd1Rn1veEW+a2ko+NjHNv4dSim0rCaFcV7Fvp8tZwJogCeovt51x8E3/u6pP19JcDMVZA6aHLiRfhJ9Hij2vSJqzF5tWSMu0un3JFluQXEfi9pE6wOVRGT6L0LnpdVN3FFB2/Q90LnSAh0qEGkVcvghi3rD5ws5tkj85/qkkRWj5gWyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VN6rr4HxbjKD+QW9jbE0tg1YSq+MF+P5CtnEfpy1Miw=;
 b=QZP1n2G1Fq/hxv3nphdWxm3zeoWvhHICUpv7otT2+MI6Svezn/MS9zSfg/KWcTy/6V13etOhWTBPACSRaQEG2HGqWYAHVtca4KVOaV5gGtijBmzN4Z6c5A6YnzOiBRwitrNysg0nDVGejsP7cP0KC3uPrkSRqjuwDJNKP4qp5SIRTlHTIYS1w7tGjCXDstaN+OZWSRbOjYFXfAqtf1foSq2vdBjGS0WtQON5EknsTCFaa7VJvrJpbvdcVtDsgw7q6Zc6KvAiMx7lMg/hmF7KB4EO9ChOeU0hF+TapCUnGRQvwh4fk1kj0Wt8gzP14PhLapqxEevL+tn99uNWmItIEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM6PR04MB6246.eurprd04.prod.outlook.com (2603:10a6:20b:bc::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.28; Sun, 5 Jul
 2020 01:28:10 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::b948:ad31:5db0:e954]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::b948:ad31:5db0:e954%6]) with mapi id 15.20.3153.029; Sun, 5 Jul 2020
 01:28:10 +0000
Subject: Re: [PATCH] scsi: iscsi: register sysfs for workqueue iscsi_destroy
To: Mike Christie <michael.christie@oracle.com>, Bob Liu
 <bob.liu@oracle.com>, linux-scsi@vger.kernel.org
CC: open-iscsi@googlegroups.com, martin.petersen@oracle.com, cleech@redhat.com
References: <20200703051603.1473-1-bob.liu@oracle.com>
 <a34c8886-a6dc-4ce0-5ffd-a09d913daa5d@oracle.com>
From: Lee Duncan <lduncan@suse.com>
Autocrypt: addr=lduncan@suse.com; keydata=
 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
 Xd8p+B+giaT8a1b5hWuz85V0
Message-ID: <cebb8331-de5c-c16e-2837-756355954a7c@suse.com>
Date: Sat, 4 Jul 2020 18:28:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
In-Reply-To: <a34c8886-a6dc-4ce0-5ffd-a09d913daa5d@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM4PR0202CA0012.eurprd02.prod.outlook.com
 (2603:10a6:200:89::22) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by AM4PR0202CA0012.eurprd02.prod.outlook.com (2603:10a6:200:89::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.21 via Frontend Transport; Sun, 5 Jul 2020 01:28:08 +0000
X-Originating-IP: [73.25.22.216]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a736b43b-d208-4dda-5b0e-08d82082ad3a
X-MS-TrafficTypeDiagnostic: AM6PR04MB6246:
X-Microsoft-Antispam-PRVS: <AM6PR04MB62460E80930A7C59AC5C4B2ADA680@AM6PR04MB6246.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:353;
X-Forefront-PRVS: 045584D28C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o9GYsd8geFVcaT8EFIl4hjmvbObeFdiReoNR3Td/4YOoUWYTXmFVW0pvFR4tBhmCTnDgWhNR2vkYvxC+joVOymbKHABCh+L9bGjSPSNnpWPmwUOaAibZhXiNKawKJylltCx+Ip/Lwo6FWZPY+K+FJs6/NuLi+4tismqS9L4YN5VkXVtAVQXrpCEWLUaIJtZUTwUrXg/SO7ChPflrFoNfmTjds5Qy80B0qUHo6bbryYzZnjOfU2rQ9SHmxdBBHvnv/qSav6tNOqZSwzt9PL14ZjpAvH/LXY+4a8X3n25m1Y6Ez/xie4gzy1oIwTh58zM2WT6+5Cz5Ia4KWoLhuYO+uga9HU4pfs4pfSZyNhuHnamR/Hsw2q52MBS0vFOOWaz5
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(39850400004)(396003)(346002)(136003)(366004)(86362001)(36756003)(4326008)(66556008)(66476007)(110136005)(52116002)(53546011)(66946007)(5660300002)(6666004)(2906002)(478600001)(6486002)(2616005)(956004)(31686004)(16576012)(26005)(186003)(16526019)(316002)(83380400001)(8676002)(8936002)(31696002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: LPhgHzyVeL+5aZVzdX3vimuC/2RrtwW3v4mj/zTCSKjEY2TDqReYchy3isxbwebD4cugTlUrpdvJpPcQk6xJJUKI/IucSy/FeUVBzngBiVJqwelJuGSjr4eoOjALQxPkNQFmCfCvPqSY2G1cZRGEpmM/NQT22F8P+5QqkLwuJOh5qk7v6rBJRBflhkFu29mkv1tKFYiMtW5ZUFySU97uEsQq9NTUY3k7tKJeYS8yzEYWKNfjMUbxZPz7krI8E4Xsh2RMwwrS/5ryn6XzrG2vveMbfwvj+qxheaAq47GsgQ/eBqYSRnITsvE8OrJdJCMJSS0ve4zUtkmBIXHasTKhO7f63iq4cwp7qw6iEFwui3z1Z5rVv1OGrDuVx2wkckEBabYCv5s8rINPSIKR5iq8lRFZTd5oM3TRT8NLORChaFpLzmXQ69sluRd4qLveWFN0QW5Xz9r7jXQCG8eXaeNzTq89RfyefM2tbpni29epclw=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a736b43b-d208-4dda-5b0e-08d82082ad3a
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2020 01:28:09.9363
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9ECuHn2pydHaZdTNkcD4xR2oQvuXIrkVsMVQkXitizh+Gso4t7QxnKPozmNiESomzr6M7/tu9lOyvm5faE7eRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6246
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=fail (body
 hash mismatch);       spf=pass (google.com: domain of lduncan@suse.com
 designates 51.163.158.102 as permitted sender) smtp.mailfrom=lduncan@suse.com
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

On 7/3/20 8:59 PM, Mike Christie wrote:
> On 7/3/20 12:16 AM, Bob Liu wrote:
>> Register sysfs for workqueue iscsi_destroy, so that users can set cpu
>> affinity
>> through "cpumask" for this workqueue to get better isolation in cloud
>> multi-tenant scenario.
>>
>> This patch unfolded create_singlethread_workqueue(), added WQ_SYSFS
>> and drop
>> __WQ_ORDERED_EXPLICIT since __WQ_ORDERED_EXPLICIT workqueue isn't
>> allowed to
>> change "cpumask".
>>
>> Suggested-by: Mike Christie <michael.christie@oracle.com>
>> Signed-off-by: Bob Liu <bob.liu@oracle.com>
>> ---
>> =C2=A0 drivers/scsi/scsi_transport_iscsi.c | 4 +++-
>> =C2=A0 1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c
>> b/drivers/scsi/scsi_transport_iscsi.c
>> index 7ae5024..aa8d4a3 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -4766,7 +4766,9 @@ static __init int iscsi_transport_init(void)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto release_nls;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> =C2=A0 -=C2=A0=C2=A0=C2=A0 iscsi_destroy_workq =3D
>> create_singlethread_workqueue("iscsi_destroy");
>> +=C2=A0=C2=A0=C2=A0 iscsi_destroy_workq =3D alloc_workqueue("%s",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 WQ_S=
YSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1, "=
iscsi_destroy");
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!iscsi_destroy_workq) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D -ENOMEM;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto destroy_wq;
>>
>=20
> Reviewed-by: Mike Christie <michael.christie@oracle.com>
>=20

Reviewed-by: Lee Duncan <lduncan@suse.com>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/cebb8331-de5c-c16e-2837-756355954a7c%40suse.com.
