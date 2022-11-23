Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBFGJ62NQMGQEFBVMYHQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 424D7634F22
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 05:42:01 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id t1-20020a170902b20100b001893ac9f0fesf1547961plr.4
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 20:42:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669178518; cv=pass;
        d=google.com; s=arc-20160816;
        b=O8RWjBNc0I0BXfVYMe6ml+nt1W4+17GLO/zPVxOkBaevouHwlUVKCTE/+CAd0ecdK3
         xGe1/GpZkW0Ceqpz+/JxpNZR3X6bQ1leuCoajyom1+54ugNjosgT9NEJe47CdFn3PzMg
         Twe/XK6QMgIpJ0Z5unQFpr7AuEtegSphakLG7oqqE7TNVE0GsRsJKNUZ3N61VrOlVt8Z
         /j4VAzOjmnMdpKUsFWNYbV9LxmiERawTbt1d0xFUe2Ancv4RxmfaZEhjrFi6Fhc7Tt1C
         jK4KMcwYB4YDE8Ov+m/4YHgZkTl6hrFC/KHM3LY8a4Eos2CyZMShHzzbAy0CMCCu6k7g
         L9Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:content-language:references:cc:to:subject:from
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=rnmAUIRP2XCYdxYjvLw65AnTVmYd3sNLWl8phqqe/xY=;
        b=OEpL3DQ2agpBGpTIQiyNdOUZIM+TUeVsCUFZDaXIzlZ150o8AceVszPV6A/KbO7fW+
         KPE3OOsto4xgw1oFFevLRti25sNx3AyeTd7dbU4JG4pvHhF9dpPfSQ/olp29735MbO0f
         SYJtA7N5jSh4fey1a+BJNyC3r+jpo6SDXE32VYaNOyUi5Hq8VVmFptANlesPhjFA5Och
         iDeejDkDE2cRjr+I9aXlD2PTclvnmQPmEBh2eCJBhn9l2RLRS+vcLvnhGPnV1cqXZp6B
         FmdWKCD1EtkWoiIgQd8ICluDPWHq61NZHfS+Bcj/xEDTVKYsIUhSbxfr1IRQ5mbRSd7M
         p4GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rnmAUIRP2XCYdxYjvLw65AnTVmYd3sNLWl8phqqe/xY=;
        b=UwiRz2/9ZSOioE619rb3xwEcDWM8KFMWh6ibUnii2iHKHiwr13lJUhlPOKJrqkWvRB
         se9Zme0Bncd6TRXPuosjlRvPzafOPOLkIsXqM9zzV+5nMyBUl+Sr0moV7xfFzFZeRroz
         cpBkJlhcbv5Vcg9SbKjpfpSupbz03e1VC/jus+0fQahfSijmnBo8m6FeNHMtpoxdHUeC
         oZ7m8oTM2SIukWXVPhEjcHZpo4zOunp1P2WHeSjLvLZBZfGcbDDbxjbH4HQUB3vv4Wkj
         TODNu91AzocKTgnTG3qyNG0wMCepqG4o2XVEdCpFqdp0hWLxJpdH2OVORs0mmhC+x6ue
         Q2BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rnmAUIRP2XCYdxYjvLw65AnTVmYd3sNLWl8phqqe/xY=;
        b=M/aEeH6/a4Qm3fMAPjm6FsUfz8VM3iGL3IWpPtekL2tsYlBxM+w+B6aMPk8yHkGaK7
         hHNNy/iNIkKks5nsdaQnaF1BedY5Bv3hLS7ApyrNOQofBilAeo8piMD+cW4TL+lK8pwu
         4T576AAvYO00un4K6XWk4vHDJO3sytB8D5gSU+iiz/tqAKu4CHiMEV/T+QJQ8UEYbNvx
         z/nLJvqitKlPU7agAsc0MsuEMndpqJZdWk6ULDoCcUtwP+NVUEacc4fETQfF8VIImf3g
         7KAivp+sxPHtfgeQ0kPAGg8bxfufMu5b93Vywpox/AuPBFLyib+TjICxyS7UwuNwlBzH
         cfYg==
X-Gm-Message-State: ANoB5pl5KDK8OByNKlbXG+yGaiWHpwMSz1oqPRTM7M8SPO7isLqTRx8M
	Px6XiHR+XAAEbfSmylaFfuo=
X-Google-Smtp-Source: AA0mqf4060PmzZCOFJisAAfu0Xz2XARE7K3uq+bZ3IC/mhlIx7vxADi0pjtoo9o/QXfZ7F/D5Uc/xg==
X-Received: by 2002:a17:902:6ac4:b0:186:bb44:946d with SMTP id i4-20020a1709026ac400b00186bb44946dmr7449366plt.11.1669178518544;
        Tue, 22 Nov 2022 20:41:58 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:10cd:b0:56d:1df0:b73d with SMTP id
 d13-20020a056a0010cd00b0056d1df0b73dls8351658pfu.2.-pod-prod-gmail; Tue, 22
 Nov 2022 20:41:56 -0800 (PST)
X-Received: by 2002:a63:e658:0:b0:476:d785:71 with SMTP id p24-20020a63e658000000b00476d7850071mr8693676pgj.161.1669178516123;
        Tue, 22 Nov 2022 20:41:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669178516; cv=none;
        d=google.com; s=arc-20160816;
        b=wtj7+/UCmO9qXCWoDOu3Mt3PdVehnSwse/iZ55+zSeGc9gpkYJG80lebj5g7oMJO4S
         AqjDFXx5PlpkbCoCMVVp1s08wM5sLi75bV2XEt4grIhd9PK6C+MeNiGgiA3Ia+ok7Qzd
         5G8AN+KhVCcH7b5XVkom1XzVd2O22jyc7j2yPiucAH0aCRDVKQ9VZNi4bqSTqJa0GFw/
         Q/Kvop3nR5Nxk3o+cr+actzyfQmnxG36mnaThzTGueO2w52FZnH4tdMI+ItDb4576uWH
         OSeBgC5/1OAKXmDADYrdd0mDI31vhfIFIXhD27DXnkkaJyO5aMEVnapY8XEaATMy4gQZ
         jE6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id;
        bh=kDPkghMng1UzO/w0pi3AIMI+Yv1bPBRvlLL79/VrgI8=;
        b=mmAE1n61kYqiQ77YSA/fYQw8IbUm/YHGAHMcrBs3H52yT6WbPHDx/2F8fdPil/mdbC
         qUmCPH5y8kMZ4xZaKRn6S/i3GCsT43xQURa8Q/+YUzQW+6v+kL01Rkd4UaTpfuKhHf10
         h6FIAGz1s/2W43Hx3bO4ZLAnQvXbto2VfBVEFpP2poFcEiPVeQWz/lTUI5S9RM97HQj/
         OogfqMB9xv7u9fY8c6ufKiKXLqYwqD+oOP+RaodPF0Bo6Jkf1VgJJxbPCfo84fA+zPtU
         vi20E+xgPByrnUmDVQ5gcpFmr6LFmhxLe/SeTxQbCGYl3S+bV7e3EZQsWYCgQYd26+PV
         k76g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id u130-20020a627988000000b005742335f3fdsi139543pfc.5.2022.11.22.20.41.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Nov 2022 20:41:56 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NH7jV5lqGzHw5D;
	Wed, 23 Nov 2022 12:40:46 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 12:41:23 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 12:41:22 +0800
Message-ID: <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
Date: Wed, 23 Nov 2022 12:41:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
Content-Language: en-US
In-Reply-To: <4d21f806-6653-5457-918c-563a3032d128@suse.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggpeml500025.china.huawei.com (7.185.36.35) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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

On 2022/11/23 4:00, Lee Duncan wrote:
> On 11/22/22 13:30, Wenchao Hao wrote:
>> There are 3 iscsi session's startup mode which are onboot, manual and
>> automatic. We can boot from iSCSI disks with help of dracut's service
>> in initrd, which would set node's startup mode to onboot, then create
>> iSCSI sessions.
>>
>> While the configure of onboot mode is recorded in file of initrd stage
>> and would be lost when switch to rootfs. Even if we update the startup
>> mode to onboot by hand after switch to rootfs, it is possible that the
>> configure would be covered by another discovery command.
>>
>> root would be mounted on iSCSI disks when boot from iSCSI disks, if the
>> sessions is logged out, the related disks would be removed, which would
>> cause the whole system halt.
>>
>> So we need record session's start up mode in kernel and check this
>> mode before logout this session.
>>
>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>> ---
>> =C2=A0 drivers/infiniband/ulp/iser/iscsi_iser.c | 1 +
>> =C2=A0 drivers/scsi/be2iscsi/be_iscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 drivers/scsi/bnx2i/bnx2i_iscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 drivers/scsi/cxgbi/libcxgbi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 drivers/scsi/iscsi_tcp.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 drivers/scsi/libiscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 5 +++++
>> =C2=A0 drivers/scsi/qedi/qedi_iscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 drivers/scsi/qla4xxx/ql4_os.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 drivers/scsi/scsi_transport_iscsi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 | 4 ++++
>> =C2=A0 include/scsi/iscsi_if.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 include/scsi/libiscsi.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 11 files changed, 18 insertions(+)
>>
>> diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniba=
nd/ulp/iser/iscsi_iser.c
>> index 620ae5b2d80d..778c023673ea 100644
>> --- a/drivers/infiniband/ulp/iser/iscsi_iser.c
>> +++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
>> @@ -947,6 +947,7 @@ static umode_t iser_attr_is_visible(int param_type, =
int param)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
IFACE_NAME:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
INITIATOR_NAME:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
DISCOVERY_SESS:
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTU=
P:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return S_IRUGO;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return 0;
>> diff --git a/drivers/scsi/be2iscsi/be_iscsi.c b/drivers/scsi/be2iscsi/be=
_iscsi.c
>> index 8aeaddc93b16..a21a4d9ab8b8 100644
>> --- a/drivers/scsi/be2iscsi/be_iscsi.c
>> +++ b/drivers/scsi/be2iscsi/be_iscsi.c
>> @@ -1401,6 +1401,7 @@ umode_t beiscsi_attr_is_visible(int param_type, in=
t param)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
LU_RESET_TMO:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
IFACE_NAME:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
INITIATOR_NAME:
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTU=
P:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return S_IRUGO;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return 0;
>> diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i=
_iscsi.c
>> index a3c800e04a2e..d1fb06d8a92e 100644
>> --- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
>> +++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
>> @@ -2237,6 +2237,7 @@ static umode_t bnx2i_attr_is_visible(int param_typ=
e, int param)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
BOOT_ROOT:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
BOOT_NIC:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
BOOT_TARGET:
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTU=
P:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return S_IRUGO;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return 0;
>> diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgbi=
.c
>> index af281e271f88..111b2ac78964 100644
>> --- a/drivers/scsi/cxgbi/libcxgbi.c
>> +++ b/drivers/scsi/cxgbi/libcxgbi.c
>> @@ -3063,6 +3063,7 @@ umode_t cxgbi_attr_is_visible(int param_type, int =
param)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
TGT_RESET_TMO:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
IFACE_NAME:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
INITIATOR_NAME:
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTU=
P:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return S_IRUGO;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return 0;
>> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
>> index 5fb1f364e815..47a73fb3e4b0 100644
>> --- a/drivers/scsi/iscsi_tcp.c
>> +++ b/drivers/scsi/iscsi_tcp.c
>> @@ -1036,6 +1036,7 @@ static umode_t iscsi_sw_tcp_attr_is_visible(int pa=
ram_type, int param)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
TGT_RESET_TMO:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
IFACE_NAME:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
INITIATOR_NAME:
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTU=
P:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return S_IRUGO;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return 0;
>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
>> index d95f4bcdeb2e..1f2b0a9a029e 100644
>> --- a/drivers/scsi/libiscsi.c
>> +++ b/drivers/scsi/libiscsi.c
>> @@ -3576,6 +3576,8 @@ int iscsi_set_param(struct iscsi_cls_conn *cls_con=
n,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_LOCAL_IPADDR:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return iscsi_swit=
ch_str_param(&conn->local_ipaddr, buf);
>> +=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTUP:
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return iscsi_switch_str_para=
m(&session->node_startup, buf);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -ENOSYS;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> @@ -3712,6 +3714,9 @@ int iscsi_session_get_param(struct iscsi_cls_sessi=
on *cls_session,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 len =3D sysfs_emit(buf, "\n");
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>> +=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTUP:
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 len =3D sysfs_emit(buf, "%s\=
n", session->node_startup);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -ENOSYS;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_isc=
si.c
>> index 31ec429104e2..b947a5bca380 100644
>> --- a/drivers/scsi/qedi/qedi_iscsi.c
>> +++ b/drivers/scsi/qedi/qedi_iscsi.c
>> @@ -1437,6 +1437,7 @@ static umode_t qedi_attr_is_visible(int param_type=
, int param)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
BOOT_ROOT:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
BOOT_NIC:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
BOOT_TARGET:
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTU=
P:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return 0444;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return 0;
>> diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os=
.c
>> index 9e849f6b0d0f..1cb7c6dbe9d3 100644
>> --- a/drivers/scsi/qla4xxx/ql4_os.c
>> +++ b/drivers/scsi/qla4xxx/ql4_os.c
>> @@ -468,6 +468,7 @@ static umode_t qla4_attr_is_visible(int param_type, =
int param)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
DISCOVERY_PARENT_IDX:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
DISCOVERY_PARENT_TYPE:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_=
LOCAL_IPADDR:
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case ISCSI_PARAM_NODE_STARTU=
P:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return S_IRUGO;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return 0;
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tra=
nsport_iscsi.c
>> index c3fe5ecfee59..39c14d2a8aad 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -4367,6 +4367,7 @@ iscsi_session_attr(tsid, ISCSI_PARAM_TSID, 0);
>> =C2=A0 iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO=
, 0);
>> =C2=A0 iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PA=
RENT_IDX, 0);
>> =C2=A0 iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_P=
ARENT_TYPE, 0);
>> +iscsi_session_attr(node_startup, ISCSI_PARAM_NODE_STARTUP, 0);
>> =C2=A0 =C2=A0 static ssize_t
>> =C2=A0 show_priv_session_state(struct device *dev, struct device_attribu=
te *attr,
>> @@ -4488,6 +4489,7 @@ static struct attribute *iscsi_session_attrs[] =3D=
 {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &dev_attr_sess_def_taskmgmt_tmo.attr,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &dev_attr_sess_discovery_parent_idx.attr,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &dev_attr_sess_discovery_parent_type.attr=
,
>> +=C2=A0=C2=A0=C2=A0 &dev_attr_sess_node_startup.attr,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 NULL,
>> =C2=A0 };
>> =C2=A0 @@ -4587,6 +4589,8 @@ static umode_t iscsi_session_attr_is_visibl=
e(struct kobject *kobj,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return S_IRUGO;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else if (attr =3D=3D &dev_attr_priv_sess_=
target_id.attr)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return S_IRUGO;
>> +=C2=A0=C2=A0=C2=A0 else if (attr =3D=3D &dev_attr_sess_node_startup.att=
r)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 param =3D ISCSI_PARAM_NODE_S=
TARTUP;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 WARN_ONCE(1, "Inv=
alid session attr");
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>> diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
>> index 5225a23f2d0e..e46e69c1fd02 100644
>> --- a/include/scsi/iscsi_if.h
>> +++ b/include/scsi/iscsi_if.h
>> @@ -610,6 +610,7 @@ enum iscsi_param {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_DISCOVERY_PARENT_IDX,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_DISCOVERY_PARENT_TYPE,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_LOCAL_IPADDR,
>> +=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_NODE_STARTUP,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* must always be last */
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_PARAM_MAX,
>> =C2=A0 };
>> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
>> index 654cc3918c94..af4ccdcc1140 100644
>> --- a/include/scsi/libiscsi.h
>> +++ b/include/scsi/libiscsi.h
>> @@ -327,6 +327,7 @@ struct iscsi_session {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 char=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *boot_target;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 char=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *portal_type;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 char=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *discovery_parent_type;
>> +=C2=A0=C2=A0=C2=A0 char=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 *node_startup;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint16_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 discovery_parent_idx;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint16_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 def_taskmgmt_tmo;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint16_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 tsid;
>=20
> The iscsiadm/iscsid tools refuse to logout of an ONBOOT session.
>=20

Sorry I did not highlight the key points. The root reason we need to record
node_startup mode in kernel is userspace's node_startup mode is unreliable =
in
some scenarios:

1. iscsi node and session is created in initrd, the configure files of thes=
e
   nodes would be lost after we switch to rootfs
2. someone do iscsiadm -m discovery but did not specify the operation mode,
   the iscsi node's node_startup would be updated to which specified in isc=
sid.conf
3. someone do iscsiadm -m node -o update to update nodes' configure

What's more, it seems "iscsiadm/iscsid" only refuse to logout of an ONBOOT
session when logout is specificed by "--logoutall". We still can logout an
ONBOOT session with "iscsiadm -m node -u comamnd".

Based on these analysis, I think we should record the node_startup mode in =
kernel
and check in userspace to avoid logout ONBOOT sessions.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/00f11c61-a53f-c48a-017f-4c06055ea708%40huawei.com.
