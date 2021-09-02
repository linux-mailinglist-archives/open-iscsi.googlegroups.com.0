Return-Path: <open-iscsi+bncBD54HHNYIIIJNSWFREDBUBGMPQIB4@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id D87B73FF828
	for <lists+open-iscsi@lfdr.de>; Fri,  3 Sep 2021 01:58:14 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id x10-20020a05651c024a00b001cf8e423d60sf1570801ljn.12
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Sep 2021 16:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2VlB55+M1r7L22swkwOiRl74kHh1UhGnbGTo2iehThY=;
        b=k+TUNi/ZPvAAJsdwrKU34M7Z7eaxp2WRtMEuYpnnucjUtwP77IfB9fskhmfQHsb4nJ
         JXgyLSeL0ZCvxwq/OQr3nWViaEI02vlGujIAXSe6+a+i/E7dCRedi2J27PZM493n5PaW
         Q0myAoZ1EjYJVX4+wgCF/NRVn6/44uuGtVLGUsko2q83jNdh8bQz8+X7Lfe+/XGSbVNt
         mNMOUhod4VEb6X5+k3SY4wgv3YLjTgoEFNx82W5+BQc4QzP5h8fyoA3pYyVRAd/K1i9e
         /2Ix+TSjL+0xcLpE0FduPUjjioA1Wfu4Df8vdnd11IROTJTnyDB2CSG5VtCcEKMNW+R5
         RRVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-language:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2VlB55+M1r7L22swkwOiRl74kHh1UhGnbGTo2iehThY=;
        b=E0uH2frJbBtxVD2BriwQU4Ny51+6A3efvxzRah5dvjkODQEi7l0yYIB3MnjvT/fRgw
         WWgLMoJ47of7N3s93IGWHQiB4n98w5T48zSiheCYE2R2u3KfbLeNTeGdYumeJFzT2HKX
         KPsXJ8POYjI5jvoMvZYiVsn/B6+uGMY8LKOlQzOIjK72FPbz71VHIIG9AwmRjrkqdXyJ
         FfsvrPZYlhKneB9NgxIwAGugqC48Imksyrbp27YfeOIAq38zFI6PHxye+vFhvJFdCfFf
         kGhvA2CrNPsKmL0/w6JZyIVM3lC31gVnRgiHFlEVC2KqvErUDUSbK/JmdNOHstqK9xwo
         n7dQ==
X-Gm-Message-State: AOAM533IhrFSIFjJ7dA1JOLEjDpJtigEiFMZRXMqBTK0NW0bS2GH/jOX
	L2a+tEpFwq4vBlTKGDUmQ84=
X-Google-Smtp-Source: ABdhPJwvxcNrebRL5iIpDVDpLSL7nIUbaONgASU7cy2UMzNqwTzjK5Jd74HqVgJcQC23bhhHGlNMew==
X-Received: by 2002:a2e:9b0b:: with SMTP id u11mr647444lji.463.1630627094489;
        Thu, 02 Sep 2021 16:58:14 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:4016:: with SMTP id br22ls1518463lfb.0.gmail; Thu,
 02 Sep 2021 16:58:13 -0700 (PDT)
X-Received: by 2002:ac2:4e68:: with SMTP id y8mr476144lfs.527.1630627093297;
        Thu, 02 Sep 2021 16:58:13 -0700 (PDT)
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [194.104.109.102])
        by gmr-mx.google.com with ESMTPS id n6si138941lft.8.2021.09.02.16.58.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Sep 2021 16:58:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) client-ip=194.104.109.102;
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2053.outbound.protection.outlook.com [104.47.14.53]) (Using
 TLS) by relay.mimecast.com with ESMTP id de-mta-1-F5XEtpihOmKhtdn_-mqiIw-1;
 Fri, 03 Sep 2021 01:58:11 +0200
X-MC-Unique: F5XEtpihOmKhtdn_-mqiIw-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTlxENPhZ5De3grrgrYruzjEDyFGb8GoZ0ab5HaIcFt/fCjW/yDQqumlUmXVE6VMerkUMbi/yQI9TPpzi27KynVXUFfqt96og38oPv5QPQTqCQx6yxiZzXLx2v+2bCXVoPQkLFWuw3exbW5OJeUqTxBZQ7waFA/PeWXHyl5sCNlj3tFbC5+nvn89OG0GooL2pgHqFHgcylx49OcJOBgo6PseRXqbfAEPWtXmJZhl/WO6zmd3LlRDnMvMwhnqn4/VRkjY0g22nGRFkgwhgFK4Z4IveznKWeGTWV/3W4Hp1X+bCj3cj4Chi+8wrrmkrxHxCzh2I0OYcLCVPVthY/ME3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=rrKFuDMgSPTwieDtLGyFGEzItYFqmnpMM5jrDMheh+8=;
 b=cejSLHp7svdSWghfqFcPKcOoQsmkO7YSMeOvLsRFn0qXzyh87sfg+mAj7QKunFcpNCS8vHmgwHISsv/FplAncqnk7+gi1cKZ1niEphr62XsMQJTiB31+YcDWmA9s73gNwdCHtpZaWWHWk9c6jtcAq5WHl8jllBozlSEm/BWPzPVXQy6QiX03zWU1o2XX68ZWu9pnwvpk25qogDLTlXzA1BZcGaURTNUhUCMh4GcuEa62UFJVzOw0I76HNcrkgJw20d8k67y8+W0OCi7+iifBFGU8NH7GnqftnRyVR3PdWD6srlDm1ppc0pfhv8P6NSYSwhiBaGcUG25PR3XxHAuGhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM6PR04MB4375.eurprd04.prod.outlook.com (2603:10a6:20b:20::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Thu, 2 Sep
 2021 23:58:10 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::2d7c:6469:ec6a:b3ce]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::2d7c:6469:ec6a:b3ce%5]) with mapi id 15.20.4436.027; Thu, 2 Sep 2021
 23:58:09 +0000
Subject: Re: [PATCH -next] scsi: iscsi: Adjuest iface sysfs attr detection
To: Baokun Li <libaokun1@huawei.com>, cleech@redhat.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
CC: patchwork@huawei.com, yukuai3@huawei.com
References: <20210901085336.2264295-1-libaokun1@huawei.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <91d4e2a7-0a10-ef7b-37b1-3ef884a3c3c0@suse.com>
Date: Thu, 2 Sep 2021 16:58:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
In-Reply-To: <20210901085336.2264295-1-libaokun1@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: PR3P193CA0048.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:102:51::23) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by PR3P193CA0048.EURP193.PROD.OUTLOOK.COM (2603:10a6:102:51::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21 via Frontend Transport; Thu, 2 Sep 2021 23:58:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc414b07-334d-4da8-cce7-08d96e6d8412
X-MS-TrafficTypeDiagnostic: AM6PR04MB4375:
X-Microsoft-Antispam-PRVS: <AM6PR04MB437535007873A1129B584E10DACE9@AM6PR04MB4375.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yfud2sEam3forLd6vRTrTyjc+LfodoFCJSWTlHN6LKITdHmOTCZmCLuE88fteGz+UxA8tWxWuB62JrCjqoJlkfdELWA+stvqwvuhr9s2vKM75f8FHJsNJiqnXqiadxNz2SVd7mkyL7uagu0hIGoFv52jowoQlB3udB1Ku85FwqTLTff1YHosvt23t1ai78ylGT4IlMxufvMK7UfZ85u+6Mq422QUIOknVBU0wnQ1akpYhaps2uDs3+4beeiwUkv2aBcAmQLbb+HfslKoS7sZkkx1nTPfu+mMqzF87TJSIoZiJvnImaHTwBTtxF1SQwKJVbF8dwR1XRj333Gin1uK0s+r3VUQXZGQgnzoO/5tbqkDUL1c02dn3m/2syomL7zQACHz1gQ/0px8Hyspl7KY5gMGcRSywL+GMQ8JsF3UeAJNTJkXIBT2xP07byji2ZUTtsjB3A2WKMt9SST0epRK73rdIJ5kVGV65rDFPCrgb5Uzo1qhnJwyUaTLh8LvsH02z5eVRMl+b5Xl5QJWiRbH9fa8hB5VeyL/hYUlp2w/FHBYYgiObn6ZFiw70shszt3fQpZkdHVH470CTRmDqaG2KBQqVa3u40MD1/cGTcxn8LLZ6vixLJaVq9ur8sxFyDu7Z0nFFX4WdR1Ubdnqlp10DLAaBLTvyeyRbcDuTd9pt/1xAPdEWNHhiFFszuIH+8Qvsw/s7tF/lcoea98FElHcg0kNXfjsJgULPaUmbCcxZS8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(366004)(346002)(136003)(39850400004)(376002)(66476007)(66556008)(8936002)(38100700002)(83380400001)(66946007)(26005)(186003)(316002)(16576012)(36756003)(53546011)(2906002)(4326008)(478600001)(6666004)(956004)(2616005)(86362001)(6486002)(31686004)(31696002)(5660300002)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dKqY2sSw+VxnoL+OIAOv0aZVSoGAtZYmH2zgW2k5HL9Z3HJjaYtlUZz16bnZ?=
 =?us-ascii?Q?geAlwI2qwH6sBUcmCklXCH4hsO1VOSlJXkAuZY1C9is6HZvsAAkHVTOXrwVt?=
 =?us-ascii?Q?zoQ4eWlrsw5wHnHLgZZsaGX67m2SKIxPdxy5oIzd81ge8hA8dF7e2TMhFNwj?=
 =?us-ascii?Q?TRc19ariDiKDp4mQoWze8JHBvJqlijnXTC2/gO9JaEUuSPmoDmAp6KvQ5W6i?=
 =?us-ascii?Q?OIlZYP7Fkv0fB2rpN8GdbsjhRWCzHQQSRX+Rq8BCtFH48H6wqgZ2tdoNXQzO?=
 =?us-ascii?Q?nWZCahoAZSNAhqI9OUvnGLY7xNVPxipqaHKbpsylh2Qf+HJQvovbP1wa0bfQ?=
 =?us-ascii?Q?VzaPqRm+7NyqnHrY6hKQf6bAXAImdBrUUrJIsxCBIMSM8s87gpvjbAbqCsGf?=
 =?us-ascii?Q?uf4Npqyjfg7IssS2CCvTgzQ0uYo7FDf3y9LSsgFUyyxg43XG3LUnmdBi9JLL?=
 =?us-ascii?Q?8aBNrQ/p12c8ktlt3BxhEMPAigH9dhLEDS4Ax733n/N0ZW72uU4i29Kv6yFp?=
 =?us-ascii?Q?78vys8OBQXIgQqXJmp7I9OlewOmPUhfoAbJe1DzShapzRyi3HON5ro4Dbj+S?=
 =?us-ascii?Q?46ArMHYZcHKm99KZX+YGc7oHXWq9nO184f0RncBFPqVD93RPxFJbvOJDDECp?=
 =?us-ascii?Q?+YOhkfz2eiiSUFslUMWqCt0MY04j2dV5KlwI7q5aMl5hgUGDYvi7OA1vPwEW?=
 =?us-ascii?Q?RFfhZAyfJDDrtM4vaJ56Ubx8mhw08Z/WRy6X4l5jkCKUz6okqQj2cmwcCvLk?=
 =?us-ascii?Q?Mo3zJdZQS5oyfR+uN+4gn8nPK+XMRCsuRdaHhQ/H/YuNsd+ytmelVx0U46JG?=
 =?us-ascii?Q?Txb7AurppMVbVdELsFEVoRzeucujMaQMRltXTWTChKduEbb+7nBJn6rutvE5?=
 =?us-ascii?Q?2dogPMGX32leXxN9OtT9K/mcLEvkpAltNv9HCWb/m75RJfaJQxEqUm0L3CVa?=
 =?us-ascii?Q?Edg9sNx3S8jiXMAMZCxqulnz480kVppSWD5QChGImDHtTtexnqeu3TGXiE9c?=
 =?us-ascii?Q?lWdxmEs2RQ9f7HuxLdMik2n+9CoDdNp7b0qaLir+bfJYXG3/kdfbGXNnnXXX?=
 =?us-ascii?Q?i1QR6/WAaa7SDqrXIzvL+2rFB6Cst6S2O0wxq6XSRxMaT+eB4xHyTFjM1baq?=
 =?us-ascii?Q?Ux+NM5eyJeJNM1ifvymHA0z3fGLpB/5d1oaa5aQyfXlJIvEWsA2hJEhFBgQD?=
 =?us-ascii?Q?TI4SxuCXRwuvUdVbCMuoosL9vtdudRe9TlPuXJ4V38cW5fhWMG+qTJ1AK9vY?=
 =?us-ascii?Q?vr5RV6BZ7gxO255lPAVLy57nmeO1MqAt1Ey3Da8pmsuS0RpYYZDn5RCcLekW?=
 =?us-ascii?Q?OTNUu8Fz/NKOQ9nCXUsYg6iA?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc414b07-334d-4da8-cce7-08d96e6d8412
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2021 23:58:09.8019
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +cnhihunOPXn/n+P71MXDzwAGHzwbBrg3fL8JfsnjzAMBIUEooX9cbS7VUrqtvMfy2wZiSciyGNT+IxCF3Nwdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4375
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=nJO5kNyG;
       arc=fail (body hash mismatch);       spf=pass (google.com: domain of
 lduncan@suse.com designates 194.104.109.102 as permitted sender)
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

On 9/1/21 1:53 AM, Baokun Li wrote:
> ISCSI_NET_PARAM_IFACE_ENABLE belongs to enum iscsi_net_param instead of
> iscsi_iface_param=EF=BC=8Cso move it to ISCSI_NET_PARAM. Otherwise, when =
we call
> into the driver we might not match and return that we don't want attr
> visible in sysfs. Found in code review.
>=20
> Fixes: e746f3451ec7 ("scsi: iscsi: Fix iface sysfs attr detection")
> Signed-off-by: Baokun Li <libaokun1@huawei.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tran=
sport_iscsi.c
> index d8b05d8b5470..58027207f08d 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -441,9 +441,7 @@ static umode_t iscsi_iface_attr_is_visible(struct kob=
ject *kobj,
>  	struct iscsi_transport *t =3D iface->transport;
>  	int param =3D -1;
> =20
> -	if (attr =3D=3D &dev_attr_iface_enabled.attr)
> -		param =3D ISCSI_NET_PARAM_IFACE_ENABLE;
> -	else if (attr =3D=3D &dev_attr_iface_def_taskmgmt_tmo.attr)
> +	if (attr =3D=3D &dev_attr_iface_def_taskmgmt_tmo.attr)
>  		param =3D ISCSI_IFACE_PARAM_DEF_TASKMGMT_TMO;
>  	else if (attr =3D=3D &dev_attr_iface_header_digest.attr)
>  		param =3D ISCSI_IFACE_PARAM_HDRDGST_EN;
> @@ -483,7 +481,9 @@ static umode_t iscsi_iface_attr_is_visible(struct kob=
ject *kobj,
>  	if (param !=3D -1)
>  		return t->attr_is_visible(ISCSI_IFACE_PARAM, param);
> =20
> -	if (attr =3D=3D &dev_attr_iface_vlan_id.attr)
> +	if (attr =3D=3D &dev_attr_iface_enabled.attr)
> +		param =3D ISCSI_NET_PARAM_IFACE_ENABLE;
> +	else if (attr =3D=3D &dev_attr_iface_vlan_id.attr)
>  		param =3D ISCSI_NET_PARAM_VLAN_ID;
>  	else if (attr =3D=3D &dev_attr_iface_vlan_priority.attr)
>  		param =3D ISCSI_NET_PARAM_VLAN_PRIORITY;
>=20

Reviewed-by: Lee Duncan <lduncan@suse.com>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/91d4e2a7-0a10-ef7b-37b1-3ef884a3c3c0%40suse.com.
