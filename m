Return-Path: <open-iscsi+bncBD3JNNMDTMEBBEPOQ6YAMGQEV6VJV2A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 847C088B3A7
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 23:13:39 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id 006d021491bc7-5a46ad3f0f1sf4674293eaf.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 15:13:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711404818; cv=pass;
        d=google.com; s=arc-20160816;
        b=WNz7OHHoFOpcUigeepLbDTUNW+FQoONdqohWUJJuUsZqUpBG2zTFP3Dj4IS+mbSnOi
         mTBDlojfx/jAbUqm1pjUuDAsXOo6DRYqy2tih5CwnjXMHN0BJssg7yj5zTQqgemkLsVg
         MmOiIJEXSkSUxVQ3AZlb+ZXd3OvXRHY6STlkv+wRGoXRGLC3l7D940in0WrN6X8+Rp4M
         u3GNVIfaa0NejewEfnt9zivzFG2WSQSUYcRyoNJFT1NDNYVYBz0tgCIXHiQ/C21eq24M
         J77XmbPbU35sUYHK7AeE7mVA4DO5Vedv4tLtgB16pYauAtuDo4bQY3GFip8yV8DWfTzG
         xbyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=FMm/VPLTQ9llBYsa+FfV99KBZ3e8+XqBXgFBtDtfA7E=;
        fh=ihzvNI9jGLPdRmPR0wUiy1ooW60XBylSlVk59P6Pp3I=;
        b=kG0Ds7PgkTnvOtUKwiKjgdRjIJjMHVkjk49U+7QOYrKSvzO9TWy+2nxHpL+jk2JpN6
         +8zsjkk3LhepqeyXBHaH/bs79HJAge34+bQ6N6sgkcUGh6IsJfu6qBUfzaVKMbtDz9lN
         SlHukDDNTMa9f3lN+WqeFPOV6Xp0P97NgwUyEI7bty8vWsXarDdrP0TYOJ/ob1p6SgkV
         aj+UVN7tVGeoO0YS1CJlcT/n3rW6mYEGe7Y/52Zn/+vMNmFFzza94GjorfUNPt00XBNs
         KM2n6uC6jrNASkENOZwjcBO9cfV7Bdmv60VTUCsN3l4m2dboUxszv+VY5MdJwLmIznIS
         vadA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.178 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711404818; x=1712009618; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=FMm/VPLTQ9llBYsa+FfV99KBZ3e8+XqBXgFBtDtfA7E=;
        b=DCcPDgzV5mml14gtNbZAQ1g9e0hX8bN7z7ZD1QJ6VG0uwrasWmXcUqUbLaG7UUVKUg
         2ipK+MpX808/sziXUI1zL1zYCqVgZK2MaqK/7tiRgZI+s/DanWzHgJ3y2j51rxa+imWA
         UrhRyxon3hf3xuyvJXW0FLouRKT5T/m/Jtdbjt4aLyLKglobEErzhclNheOrsa5Aam0Z
         I9QwDeR+LKztI/LCMKLTM2lW5BDkOjdGXlCY7AQbyRNNunHY0ESFp1a5cKc634vFERB0
         oLabLyu4OrTOmApV4dwApVsJkacqHgd29j8u3953qxTddZ8Z6/YxWmphndjYD39YImK0
         4J6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711404818; x=1712009618;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FMm/VPLTQ9llBYsa+FfV99KBZ3e8+XqBXgFBtDtfA7E=;
        b=C8rmzCqiTn1MelaI0916oVTCAVYo1C92qV3XYnn4G3FD0JSLX9e7JV0jHHAObA6j7I
         zWY6jsD4Bu7EaUfIx+2UW9vfthdOoDC2tEhyinQ2N2nIOrvoaHwqro9CIw8UqnNwQqZ4
         kXQxtICd47Tgr4JxOvmvv51nl5Rb4Tp9S3mI9dk5FnUkSBC1rf5PPK4zvsZ6pu3eTw+Y
         BGZRGSfPHdsgVfTWxaQ8wPi/n/apsdXzS9PoBLLCm6szP54YuBPiQr4f1tkuPpEJAE5q
         +f80IwEkVLfE2m62GWQNme9iH73pdSvn61+R5Lo1wIiKgNaQCA3vtuo+0rie3cKlgQYS
         YocA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCU8kyVNCZFNIrK3EbH2eyvJD+7LNFIDWYD9RxNcT8zvymj4EAmT0i5aY2WGGgK8dIfdy23JgVxMd+5AqpdA/cfsprC/AI6ASBU=
X-Gm-Message-State: AOJu0YwM+YzN1hpgpTFp0PzhStK9GB4glU79nLSbu+MfO3VzOYy4CRDh
	j4BYiIeV+yPUdw28BJ1MmwBXfDsEwFwWSkT+bsD6mbfJqpoBBzQi
X-Google-Smtp-Source: AGHT+IGrsk81jbdB79za1m1rhF0i6zMvHspQrBlqEYno4Apfr30mifTY/cy+JYDQyZzpAKtd0HoJFg==
X-Received: by 2002:a4a:e902:0:b0:5a5:1fdc:8548 with SMTP id bx2-20020a4ae902000000b005a51fdc8548mr1245577oob.3.1711404818365;
        Mon, 25 Mar 2024 15:13:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:9b4d:0:b0:5a4:bbf6:3d9 with SMTP id e13-20020a4a9b4d000000b005a4bbf603d9ls5189493ook.1.-pod-prod-01-us;
 Mon, 25 Mar 2024 15:13:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV3WTIAbJO67OFu7AsSHwPrIMevTs6vOzVQOz+LZLX/wR7hKOTMrbAdTcxuK/rKyMsiU5BtKyhYoxvkRDLKikK3Iju+14AHAsZXqVw=
X-Received: by 2002:a05:6830:3103:b0:6e6:7d92:d5ab with SMTP id b3-20020a056830310300b006e67d92d5abmr1168801ots.10.1711404816412;
        Mon, 25 Mar 2024 15:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711404816; cv=none;
        d=google.com; s=arc-20160816;
        b=BMcNU4roYyMZWKFkffSBRHNjAouudw/NAjyq5dp5izEHDBrLaIwsJXVXZav9EgqJYL
         2LdrxmD+irXYbrrRFyrcqqw32HJsdCPAsGE6DJRz/bG6md+qfcGf89JnNy+zo1m7ezMi
         6j/Khh2pNKtLG0rWR2TBPvN7c5fXboARSVkWj+9JDzBk5t1iClc7qtheQJz/GVx6hL0X
         6kwYTKYl570iLqMSN9/2WWzjKwNwRQeIb9MmCaqBZDwNGgKFN6zFNELY77C/lkSapOc3
         vXIVL7k6UWuO7n+Oix4AfSjFLRNGmN/gKMaobpNYQGnSvphlpnwupnwmpxJ3bZah7ViB
         gsVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=/aQ4e/dbCdS2itYvqCPdo8g2LXYfZKkrZB47BoXZEIg=;
        fh=iV7auAzBVPJr5cgcuU7P2E2LOX4l1f0mOuYMX+jPXfk=;
        b=qXsUsDT+3HwUSnujiKUNrpR4w7vKYMjr+uys/mOErLixi7CfJTfc+pfj/LH9x6yl5u
         HQUR/dDo5QFIQzjxx8BCsrXx4wvA8vYXfs8cJTJiupqnpQLdabPPUhhsyIq8Mo1Yoi+0
         sG/pQr0BzBv4FZTzA6WI8hj8UkHxzt4nGBR3N8FzWavM/HGFNzx8fETP6WcarfuM1XXQ
         Dk4S3iBI9jGFjWIrNChFZJyCy/EE+H+qR2b0q4ZZkBW4z83SgyDm+lHzcTMFBbhzjmph
         YErY1Rrh/Q3Z2tYqr4huEFc3vE8P35mOPdEE+wBwJ4/s+hqaPrNI9/zvw8fzkoIvszyl
         yvMg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.178 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com. [209.85.214.178])
        by gmr-mx.google.com with ESMTPS id k13-20020a056830168d00b006e67e931ae8si464297otr.2.2024.03.25.15.13.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:13:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.178 as permitted sender) client-ip=209.85.214.178;
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1e04ac4209eso43659295ad.1
        for <open-iscsi@googlegroups.com>; Mon, 25 Mar 2024 15:13:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVIaSNdFNjCfui4bvfe/CUwSJLQHQ6ZQnOnB1Zs6JQqn2KIVjGEOBSE/Hib8O/uzzLN+/iMw+qWRKQA5dKNyYxCUJPm7fJ3xzaWxyY=
X-Received: by 2002:a17:902:d650:b0:1e0:d579:91df with SMTP id y16-20020a170902d65000b001e0d57991dfmr956391plh.68.1711404815577;
        Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
Received: from ?IPV6:2620:0:1000:8411:262:e41e:a4dd:81c6? ([2620:0:1000:8411:262:e41e:a4dd:81c6])
        by smtp.gmail.com with ESMTPSA id s19-20020a170902989300b001dd67c8e108sm5195084plp.199.2024.03.25.15.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
Message-ID: <a81db761-7ed2-4e4b-834f-7641f6199fcc@acm.org>
Date: Mon, 25 Mar 2024 15:13:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/23] ufs-exynos: move setting the the dma alignment to
 the init method
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-9-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-9-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.178 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=acm.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 3/24/24 16:54, Christoph Hellwig wrote:
> Use the SCSI host's dma_alignment field and set it in ->init and remove
> the now unused config_scsi_dev method.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a81db761-7ed2-4e4b-834f-7641f6199fcc%40acm.org.
