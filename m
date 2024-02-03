Return-Path: <open-iscsi+bncBD54HHNYIIINPWH2VUDBUBAQOSCY2@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EE08488E2
	for <lists+open-iscsi@lfdr.de>; Sat,  3 Feb 2024 22:12:59 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id 5b1f17b1804b1-40fb3b64751sf16636155e9.1
        for <lists+open-iscsi@lfdr.de>; Sat, 03 Feb 2024 13:12:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706994778; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZcJWXMhMkron9Z+vB21rBvBuu0Af4/IIA8+DPGJLcfh85ASmx76K47pgehXprM5Ev
         RgGLS5FR50MbsEF+I0ZFd4MvdFhfnJClPJnLEfnf5vGTjIqy8xk4QNlhCSwG1FJbbFwY
         j4EJP2OikDQJ2QUJ3ZmaQ/wyhrRu2DQmjYlevDaIYatrk5lFPiyzZizgzszgzul/gt+N
         keTt0vp83ZPzB7rMwp8bc7rP7MIPFLOebEEamMtgwbTTBixaVMIjSGC/zL/MqE2mRcoC
         Yvi/bD1WXXRvF5QvdcXqQXwjCyKLZKW7AywHLB1Fx+uEm1CkgvPJs1hC3oTYNbrzqlzA
         S3Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=AevhlY9LwLhgeJaz8moE5K33oOx4s3R/oDNevvT20yE=;
        fh=niSz3v3rp3bIwMoOS6KNauslvivZRVDIJs5XZjONpOg=;
        b=gTSaRH9QZj+6S5xjAXFEs8W7IZiVQVICCzep8sJHuLJph+7e04hHSqSToLRoHMYtlR
         ae4e1ST00Ykqnq0nq7R1XJ8ky/Wv//SgKJNuUMY5K+p3DXC8LjPaaNAjLFHR8g/G/Z1W
         RppUS83RdL7aXtxkUoQO8kYB0yB62/rn3fwU3uS9I19pinkZ5x1wj1h6B7/bMu5hNEoa
         lKzThJwHTuGhJ5fYbw7yyvpXh0Parhi+nKyknRV+yQztDZ37MnJ7ueu/LG82QBrzuhp3
         wL+oVHBfAjfzBJ95eEqgiA5N8wGKtsext2gvZ8vKTkC7IhTjJKU/0vF2jlQ/ydjlqBxX
         9JGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=e7AaulLi;
       spf=pass (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1706994778; x=1707599578; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AevhlY9LwLhgeJaz8moE5K33oOx4s3R/oDNevvT20yE=;
        b=rvhlO0dV32K0G9Ivk4dh6uPlQhhTQm5CxzyREsAF0bDQBdykPIWKxvY/6lrNoWL5Tw
         Q4wtO7esKkNYYQr/js5c2mjQ01z30RnsQMT+9lfDlDoJUzb7hE0kSn7+Xs3KBHbTXLS7
         tBtDwSc89Qc8PK6TU+sMErAAwa6LXwYH7Zvcy0cFKZH+4144BjZtoBeefMWfjSjTHHST
         ovgNTQKDqk4xYX84ySy2+vTWuv/jnwVulqK4tPNnJB/4aBaVbVbrPCJQCoNeYomftblW
         gw4+3ep46/nqcXfSi4BI/+3U+j+2mRxOGWNO01zjPs53S/iPozh287Zkp8PBENuUEK8s
         3KLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706994778; x=1707599578;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AevhlY9LwLhgeJaz8moE5K33oOx4s3R/oDNevvT20yE=;
        b=WmEwNEwwHdnVwHScgjckpfJZPrZaHuZsvcfCEXxVc5Z0WZtmQ8ZyOk2z02tDRrOJbc
         NNyNK8EoEfX+A5ygmOSaaqC1VZOikzpK64dlQn8vD9u6HPe+u+0psniOpHzHe3UM08Pn
         QvCYPu3xyMIRU7K/NENY+S/kumASdBFIPm3fTm/vSMPG+QYcRUobwyIZRBk6LgSZCxHo
         DAFwtxbZGXZmp3Zdt8KwpIEq9FsyG4P+W+YUTF7C1GEsdL1YjnRu3m0UkEmX58+YRT7e
         kdsTg01YMGZgNDdmKKCQ4S6EEg81FpxRKTqSrGub++VrJ1QykZgfVRD3fM/23fMqlwAi
         DHZg==
X-Gm-Message-State: AOJu0Yz7Kcw4yujLpgXJSpeCuXApp4AA3LPp+E6F33V5vqDfDZSO09aq
	zCG3Vbh97fBJ6T8YTiv3mt/tsmpOzurTfbevJJR+AxGdnfAlHkPK
X-Google-Smtp-Source: AGHT+IEfLN7TU3LGkmIVPndugChN2tPSsJSPMsQW/garAfGS90t+7tPgculLxx2MCvuL58CQUZnQXQ==
X-Received: by 2002:a05:600c:4fc6:b0:40e:f557:738d with SMTP id o6-20020a05600c4fc600b0040ef557738dmr1512674wmq.26.1706994777911;
        Sat, 03 Feb 2024 13:12:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:1546:b0:40e:6522:eed8 with SMTP id
 f6-20020a05600c154600b0040e6522eed8ls1341071wmg.2.-pod-prod-02-eu; Sat, 03
 Feb 2024 13:12:54 -0800 (PST)
X-Received: by 2002:a05:600c:5254:b0:40f:d1e4:60b6 with SMTP id fc20-20020a05600c525400b0040fd1e460b6mr1605431wmb.21.1706994773687;
        Sat, 03 Feb 2024 13:12:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706994773; cv=none;
        d=google.com; s=arc-20160816;
        b=csqJ9FfxesjGuirwYV/9DOYuZYCO3kMQoJQWHUPbJ2wlXMhqaLY7eMbxDqei/6RnAT
         K0qZWlRgxgxvKNspDl+Le9Eertsg9Fro8Bwf247wIRTCaIybB9fpOY5BkOw32l9HXP6q
         mM9kD8n4TOk1+oalkuvvlNvrNEwyi8sn4Ud9n8zWMT3aRsO8W9P9mvyjmnMtCRK0vu2c
         NxFmVICEHRhD0+KqLdMhmSOwifWZp9yq0i6HOMAidHgoYnfopDEHhaGRNEw2g/guYnL8
         fKrSuFEKuKgZ7gbw6SjP4BQa/8/7WHyfdG265sk8pyqWT9osd0Mzd37hsE3vySXp9CE9
         B2DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8wTplBP8Qcn6WEm+IfMMBshhvnI94zgtW6tqzNQZV3o=;
        fh=niSz3v3rp3bIwMoOS6KNauslvivZRVDIJs5XZjONpOg=;
        b=u/PjEUdOGPKPCtLEciFV4ox9hVQqB+5KPFfKC+DFdrg+CvIled2ZZ0YptLTlmROaS2
         gkh2AlOmEkR6dTXMK+BF8x8iQhKyJJ1MNzx8DAwQHXxnmiPsw3D44qNLea7E8LZ8U6ap
         pRTbR/b3rdwgFwt9WGwyK2SE+q/wMLe5duSQxLX9h25sjjVSHGbNp3YYW0cFYeTfmlg1
         1t9awek5a1Sj13yNp/rnajzIa8D3bF1WvLIPnkGSU2Wuareooyk1Nqisqf/041j/PABU
         BNH0nKYRnRnQNUE/9W65/+EpAXa9MH98b32b3u4L8+vT7mGyZfemLou/4A/lOxgHFX67
         T0uA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=e7AaulLi;
       spf=pass (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
X-Forwarded-Encrypted: i=0; AJvYcCX6qv8uQnwlwZylty9wkYSs3xz8+zHRef3Tr/UELwu40fepKyPmRIlHS9mZizLjJDyRJ4zT8kCgnwD966jcn5jsO9XbnVpUZs6Jv5Y=
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id fm24-20020a05600c0c1800b0040ee0a44a92si124296wmb.2.2024.02.03.13.12.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Feb 2024 13:12:53 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-55ad2a47b7aso4186821a12.3
        for <open-iscsi@googlegroups.com>; Sat, 03 Feb 2024 13:12:53 -0800 (PST)
X-Received: by 2002:a05:6402:1615:b0:55f:2c48:abe0 with SMTP id
 f21-20020a056402161500b0055f2c48abe0mr2372686edv.23.1706994773306; Sat, 03
 Feb 2024 13:12:53 -0800 (PST)
MIME-Version: 1.0
References: <20240203-bus_cleanup-scsi-v1-0-6f552fb24f71@marliere.net> <20240203-bus_cleanup-scsi-v1-2-6f552fb24f71@marliere.net>
In-Reply-To: <20240203-bus_cleanup-scsi-v1-2-6f552fb24f71@marliere.net>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
Date: Sat, 3 Feb 2024 13:12:42 -0800
Message-ID: <CAPj3X_UbiLY4MQaUjHkijpSi1LvjG-1BSfO5td7rk__2weshZQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] scsi: iscsi: make iscsi_flashnode_bus const
To: "Ricardo B. Marliere" <ricardo@marliere.net>
Cc: Hannes Reinecke <hare@suse.de>, "James E.J. Bottomley" <jejb@linux.ibm.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Chris Leech <cleech@redhat.com>, 
	Mike Christie <michael.christie@oracle.com>, linux-scsi@vger.kernel.org, 
	linux-kernel@vger.kernel.org, open-iscsi@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=e7AaulLi;       spf=pass
 (google.com: domain of lduncan@suse.com designates 2a00:1450:4864:20::529 as
 permitted sender) smtp.mailfrom=lduncan@suse.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On Sat, Feb 3, 2024 at 10:38=E2=80=AFAM Ricardo B. Marliere
<ricardo@marliere.net> wrote:
>
> Now that the driver core can properly handle constant struct bus_type,
> move the iscsi_flashnode_bus variable to be a constant structure as well,
> placing it into read-only memory which can not be modified at runtime.
>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Ricardo B. Marliere <ricardo@marliere.net>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tran=
sport_iscsi.c
> index 3075b2ddf7a6..af3ac6346796 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -1201,7 +1201,7 @@ static const struct device_type iscsi_flashnode_con=
n_dev_type =3D {
>         .release =3D iscsi_flashnode_conn_release,
>  };
>
> -static struct bus_type iscsi_flashnode_bus;
> +static const struct bus_type iscsi_flashnode_bus;
>
>  int iscsi_flashnode_bus_match(struct device *dev,
>                                      struct device_driver *drv)
> @@ -1212,7 +1212,7 @@ int iscsi_flashnode_bus_match(struct device *dev,
>  }
>  EXPORT_SYMBOL_GPL(iscsi_flashnode_bus_match);
>
> -static struct bus_type iscsi_flashnode_bus =3D {
> +static const struct bus_type iscsi_flashnode_bus =3D {
>         .name =3D "iscsi_flashnode",
>         .match =3D &iscsi_flashnode_bus_match,
>  };
>
> --
> 2.43.0
>

Reviewed-by: Lee Duncan <lduncan@suse.com>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAPj3X_UbiLY4MQaUjHkijpSi1LvjG-1BSfO5td7rk__2weshZQ%40mail.gmail=
.com.
