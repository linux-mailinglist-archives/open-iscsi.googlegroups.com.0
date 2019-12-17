Return-Path: <open-iscsi+bncBC4KT6XCR4NRBC7V4DXQKGQET223CFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BF71221E6
	for <lists+open-iscsi@lfdr.de>; Tue, 17 Dec 2019 03:16:45 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id ie20sf5612585pjb.8
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Dec 2019 18:16:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576549004; cv=pass;
        d=google.com; s=arc-20160816;
        b=HoEKH7qjrcK68lgwiOwKW7sQCyqTo3dOyC5ZfgGbrUQnz1vMkdIt06Uv4pPDqqDr9y
         sSkAawtNBFODYpNQTsvC20P/3ZGyzwcNoYIWHkLI2nG7YT2fILuBqzhFO8SyYPf0GtWG
         39nKilA674bAecgcwXO890EIB7KZs2JbMlNDu2HkMTZ2TRUQPrc2Jn+s0eUYXJxpGR91
         d3diMQYNEypMxLzUtyivCWjwH6Qod3z4uhzFN3ZY7bYqsI4KvGFrTly3AIiSKXz/erYN
         /K9WxGM659dyfaGZZpr4lRMbhFVQUMinF44G8H4WUXF2QfQWqO41FydTwOCPmhxgKwsc
         IteQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dcq/cM3xK9vW1DUdx2Kolm34Bx8PJFnnaCciNxYvMyM=;
        b=eVsp6h88fBh2FC25O1kl7jIcJipHWsj/db+MUN5hC68d/8Ch/nVqOgCxj7mhXrCe+4
         44+9iiqedq9nDkoM5Tx8qVvChdhN/QWn7xwH6hs6WnIOn217MKOi4iiHcWvo1PIno5xw
         0TG0G2rbsgCaydIbM8B/FvZDRtd546A2+eyE8P9fEUUNgcYtphoplV49mP2OlxxgEoai
         k4E1M2U9YsN46u9lFCXpuewmkU5UxO7Sw/I2ds9TT82C5Wp9R59kw0nYinbw5qyUnDw1
         TfDxj8W5qNAARX/3H1pZATRxzW5pJb7FR+MkxdlVPuqWDJHn/NX/+Pp1FS9Lh/WH6blG
         BrAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="attS5k3/";
       spf=pass (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=khazhy@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dcq/cM3xK9vW1DUdx2Kolm34Bx8PJFnnaCciNxYvMyM=;
        b=MlzuyXMKo8vweRHjfVgbJF0/v8/BaT95dTIHvWE91lq7OFlv7XAQtBcsTkJEW3Giye
         A7p9xeKJhsmhA+5qb5+GIxekyZSTDB9ZmmgYwmHeooeKpDmuCFaI5OOwGF3Smh83/7h1
         Ch0dOiiEfNhTsajBCzFwL1BmLN7brF+jhp5ghpv4R8w8rDF6yEGEhIPtJ92Hsq+5f7v0
         yI4w3Wf2BWkBVgH8fqq0jf5vtHwRMJQuUbthSJiVr5KC/9Ox6r38gS21PF8/UyhPBRR+
         e7Naqbbb7bTQlAn7b3ZSwNzjXsTe0371eUEbb+E4IIFC/TSFsZZCuSQHkHbH6btHiNA7
         PmEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dcq/cM3xK9vW1DUdx2Kolm34Bx8PJFnnaCciNxYvMyM=;
        b=ZzA74y+liRnM+kt2HpP5yPea+2oQIlDZA5aZwQ4bB1ISNwpoMQf0L6p8ywsd0bS+jN
         kA8bY3MLnoyj9/JzZ+6dV7rNdh1ckn4iRTP1ewWnp3uBcHqbIvxt+Jn0Hyh+MSebyxCl
         r9At9VnfImEQzuORIKZhWnWgUWDuzQIzUunnmjlUp59MSIAIfKBLXzJCUrcbNl9iycsA
         TZGdfBwfI3SB6H/PL/msZH2JX7h/Wl4rYeNpt6txT1tVCgoc6wu/QxBPxlMCDrnHt4cG
         5X3yySglaGYqeCdr2YkDYRnNh+1gXxGOuy0OA9/p3fVbQvLElUTcLH7RRlu+Bqy6CIn3
         onlA==
X-Gm-Message-State: APjAAAU6XUw18CG4fPSjeaP/oJCyv7bNMW6dHn5iZYBvfu+Drlicmb6o
	uFRypmOXRyeLRUmmpo9boR4=
X-Google-Smtp-Source: APXvYqz9NB4wEv4BsketBunvkwMtZ02WQtJQgq3oLrS6s/kfyFnAcFM5POd5VW+jUSZJTLfeq28Aag==
X-Received: by 2002:a17:902:ac97:: with SMTP id h23mr20266996plr.237.1576549004037;
        Mon, 16 Dec 2019 18:16:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:fe5:: with SMTP id 92ls410026pjz.5.canary-gmail;
 Mon, 16 Dec 2019 18:16:43 -0800 (PST)
X-Received: by 2002:a17:902:64:: with SMTP id 91mr20125780pla.307.1576549003572;
        Mon, 16 Dec 2019 18:16:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576549003; cv=none;
        d=google.com; s=arc-20160816;
        b=l/dj4ko3Rr6WG33rFzrA3u9c0x3RqSRXOaOBKQ/n7rPbFTNuzf/n5GuQjCpIewxH8Q
         aNrLcBqQPZb7ypGogQDeVfPN+DHE5dBdDca4hFQtLjyjYQGsuY4IIFfO4IZmnA6M9xUV
         gsuJF9+Xsazuj0pApn+DjNKZNi5ueutE3ROtStB+oe9CnZZGmGLXcgu87jlYWZgxWiPf
         tQkMivow1NqC6Zzi/MU9A7YCHYflqNVCRjnMTXeB1hLdPVH7ZrRJIAUP8hEvLGmR/HzY
         EyUvivyA40clA/RoPSbcKr/RE+k2JQYuLWTSQoZrgeKslznD/bT8G07GTpOdz5bS9IyB
         C03g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W6N6oGmUDMQ5V+REwxOPQHZUEOTloQUBAx6ptmB9HAg=;
        b=aK8pA8kONjM56/y5Ut2pwwijQssT0T63Y1Nm9EfUp6U05whHfR9uAhPeXMB6KJDtV6
         Ue4FxUiR+Y1DFXIFlN15wDMz7gYHt5tunWnsRemd0MzF7y5A0u6/rOYy9vyGjk+QeZmq
         oQww9JX8v4Ent/ZM5ZMXu2xjEu+URHlErW6HGAZzrrd/apMikQ3oPBTJXRAujDazh/WC
         M5kz0/3iJVZ7TFRK4cnaH4NSnlsWNHG9GMDBvunf378dGXKpoTTMI4venDmjxHL1u2+s
         30dHglDDVkU8EbvPi6oO29lX8H864p6NT9qWN6PR8KpZgXODEILostRBM9f43gT5SqDb
         rR1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="attS5k3/";
       spf=pass (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=khazhy@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id 36si574008plf.2.2019.12.16.18.16.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2019 18:16:43 -0800 (PST)
Received-SPF: pass (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id t129so821574qke.10
        for <open-iscsi@googlegroups.com>; Mon, 16 Dec 2019 18:16:43 -0800 (PST)
X-Received: by 2002:a37:2751:: with SMTP id n78mr2763355qkn.177.1576549002258;
 Mon, 16 Dec 2019 18:16:42 -0800 (PST)
MIME-Version: 1.0
References: <20191209182054.1287374-1-krisman@collabora.com>
In-Reply-To: <20191209182054.1287374-1-krisman@collabora.com>
From: "'Khazhismel Kumykov' via open-iscsi" <open-iscsi@googlegroups.com>
Date: Mon, 16 Dec 2019 18:16:31 -0800
Message-ID: <CACGdZYKjybrEOLq7FsN-ZSgPikDExWfBrnKe2P_-DHVJZ97cDA@mail.gmail.com>
Subject: Re: [PATCH] iscsi: Perform connection failure entirely in kernel space
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, Chris Leech <cleech@redhat.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, 
	"'Khazhismel Kumykov' via open-iscsi" <open-iscsi@googlegroups.com>, Bharath Ravi <rbharath@google.com>, kernel@collabora.com, 
	Dave Clausen <dclausen@google.com>, Nick Black <nlb@google.com>, 
	Vaibhav Nagarnaik <vnagarnaik@google.com>, Anatol Pomazau <anatol@google.com>, 
	Tahsin Erdogan <tahsin@google.com>, Frank Mayhar <fmayhar@google.com>, Junho Ryu <jayr@google.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000004a669e0599dcebd5"
X-Original-Sender: khazhy@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="attS5k3/";       spf=pass
 (google.com: domain of khazhy@google.com designates 2607:f8b0:4864:20::744 as
 permitted sender) smtp.mailfrom=khazhy@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Khazhismel Kumykov <khazhy@google.com>
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

--0000000000004a669e0599dcebd5
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 9, 2019 at 10:21 AM Gabriel Krisman Bertazi
<krisman@collabora.com> wrote:
>
> From: Bharath Ravi <rbharath@google.com>
>
> Connection failure processing depends on a daemon being present to (at
> least) stop the connection and start recovery.  This is a problem on a
> multipath scenario, where if the daemon failed for whatever reason, the
> SCSI path is never marked as down, multipath won't perform the
> failover and IO to the device will be forever waiting for that
> connection to come back.
>
> This patch implements an optional feature in the iscsi module, to
> perform the connection failure inside the kernel.  This way, the
> failover can happen and pending IO can continue even if the daemon is
> dead. Once the daemon comes alive again, it can perform recovery
> procedures if applicable.
>
> Co-developed-by: Dave Clausen <dclausen@google.com>
> Signed-off-by: Dave Clausen <dclausen@google.com>
> Co-developed-by: Nick Black <nlb@google.com>
> Signed-off-by: Nick Black <nlb@google.com>
> Co-developed-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Signed-off-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Co-developed-by: Anatol Pomazau <anatol@google.com>
> Signed-off-by: Anatol Pomazau <anatol@google.com>
> Co-developed-by: Tahsin Erdogan <tahsin@google.com>
> Signed-off-by: Tahsin Erdogan <tahsin@google.com>
> Co-developed-by: Frank Mayhar <fmayhar@google.com>
> Signed-off-by: Frank Mayhar <fmayhar@google.com>
> Co-developed-by: Junho Ryu <jayr@google.com>
> Signed-off-by: Junho Ryu <jayr@google.com>
> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Bharath Ravi <rbharath@google.com>
> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 46 +++++++++++++++++++++++++++++
>  include/scsi/scsi_transport_iscsi.h |  1 +
>  2 files changed, 47 insertions(+)
>
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 417b868d8735..7251b2b5b272 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -36,6 +36,12 @@ EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_session);
>  EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_tcp);
>  EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_sw_tcp);
>
> +static bool kern_conn_failure;
> +module_param(kern_conn_failure, bool, S_IRUGO|S_IWUSR);
> +MODULE_PARM_DESC(kern_conn_failure,
> +                "Allow the kernel to detect and disable broken connections "
> +                "without requiring userspace intervention");
> +
>  static int dbg_session;
>  module_param_named(debug_session, dbg_session, int,
>                    S_IRUGO | S_IWUSR);
> @@ -84,6 +90,12 @@ struct iscsi_internal {
>         struct transport_container session_cont;
>  };
>
> +/* Worker to perform connection failure on unresponsive connections
> + * completely in kernel space.
> + */
> +static void stop_conn_work_fn(struct work_struct *work);
> +static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
> +
>  static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
>  static struct workqueue_struct *iscsi_eh_timer_workq;
>
> @@ -1609,6 +1621,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
>  static LIST_HEAD(sesslist);
>  static DEFINE_SPINLOCK(sesslock);
>  static LIST_HEAD(connlist);
> +static LIST_HEAD(connlist_err);
>  static DEFINE_SPINLOCK(connlock);
>
>  static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
> @@ -2245,6 +2258,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>
>         mutex_init(&conn->ep_mutex);
>         INIT_LIST_HEAD(&conn->conn_list);
> +       INIT_LIST_HEAD(&conn->conn_list_err);
>         conn->transport = transport;
>         conn->cid = cid;
>
> @@ -2291,6 +2305,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
>
>         spin_lock_irqsave(&connlock, flags);
>         list_del(&conn->conn_list);
> +       list_del(&conn->conn_list_err);
>         spin_unlock_irqrestore(&connlock, flags);
>
>         transport_unregister_device(&conn->dev);
> @@ -2405,6 +2420,28 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
>  }
>  EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
>
> +static void stop_conn_work_fn(struct work_struct *work)
> +{
> +       struct iscsi_cls_conn *conn, *tmp;
> +       unsigned long flags;
> +       LIST_HEAD(recovery_list);
> +
> +       spin_lock_irqsave(&connlock, flags);
> +       if (list_empty(&connlist_err)) {
> +               spin_unlock_irqrestore(&connlock, flags);
> +               return;
> +       }
> +       list_splice_init(&connlist_err, &recovery_list);
> +       spin_unlock_irqrestore(&connlock, flags);
> +
> +       mutex_lock(&rx_queue_mutex);
> +       list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
> +               conn->transport->stop_conn(conn, STOP_CONN_RECOVER);
> +               list_del_init(&conn->conn_list_err);
> +       }
> +       mutex_unlock(&rx_queue_mutex);
Holding rx_queue_mutex for the entire conn_list_err may be problematic
for long conn_list_err, could we drop on need_resched perhaps, or otherwise
limit how long we hold this?
> +}
> +
>  void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>  {
>         struct nlmsghdr *nlh;
> @@ -2412,6 +2449,15 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>         struct iscsi_uevent *ev;
>         struct iscsi_internal *priv;
>         int len = nlmsg_total_size(sizeof(*ev));
> +       unsigned long flags;
> +
> +       if (kern_conn_failure) {
> +               spin_lock_irqsave(&connlock, flags);
> +               list_add(&conn->conn_list_err, &connlist_err);
> +               spin_unlock_irqrestore(&connlock, flags);
> +
> +               queue_work(system_unbound_wq, &stop_conn_work);
> +       }
>
>         priv = iscsi_if_transport_lookup(conn->transport);
>         if (!priv)
> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
> index 325ae731d9ad..2129dc9e2dec 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -190,6 +190,7 @@ extern void iscsi_ping_comp_event(uint32_t host_no,
>
>  struct iscsi_cls_conn {
>         struct list_head conn_list;     /* item in connlist */
> +       struct list_head conn_list_err; /* item in connlist_err */
>         void *dd_data;                  /* LLD private data */
>         struct iscsi_transport *transport;
>         uint32_t cid;                   /* connection id */
> --
> 2.24.0
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CACGdZYKjybrEOLq7FsN-ZSgPikDExWfBrnKe2P_-DHVJZ97cDA%40mail.gmail.com.

--0000000000004a669e0599dcebd5
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIS5wYJKoZIhvcNAQcCoIIS2DCCEtQCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ghBNMIIEXDCCA0SgAwIBAgIOSBtqDm4P/739RPqw/wcwDQYJKoZIhvcNAQELBQAwZDELMAkGA1UE
BhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExOjA4BgNVBAMTMUdsb2JhbFNpZ24gUGVy
c29uYWxTaWduIFBhcnRuZXJzIENBIC0gU0hBMjU2IC0gRzIwHhcNMTYwNjE1MDAwMDAwWhcNMjEw
NjE1MDAwMDAwWjBMMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEiMCAG
A1UEAxMZR2xvYmFsU2lnbiBIViBTL01JTUUgQ0EgMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
AQoCggEBALR23lKtjlZW/17kthzYcMHHKFgywfc4vLIjfq42NmMWbXkNUabIgS8KX4PnIFsTlD6F
GO2fqnsTygvYPFBSMX4OCFtJXoikP2CQlEvO7WooyE94tqmqD+w0YtyP2IB5j4KvOIeNv1Gbnnes
BIUWLFxs1ERvYDhmk+OrvW7Vd8ZfpRJj71Rb+QQsUpkyTySaqALXnyztTDp1L5d1bABJN/bJbEU3
Hf5FLrANmognIu+Npty6GrA6p3yKELzTsilOFmYNWg7L838NS2JbFOndl+ce89gM36CW7vyhszi6
6LqqzJL8MsmkP53GGhf11YMP9EkmawYouMDP/PwQYhIiUO0CAwEAAaOCASIwggEeMA4GA1UdDwEB
/wQEAwIBBjAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwEgYDVR0TAQH/BAgwBgEB/wIB
ADAdBgNVHQ4EFgQUyzgSsMeZwHiSjLMhleb0JmLA4D8wHwYDVR0jBBgwFoAUJiSSix/TRK+xsBtt
r+500ox4AAMwSwYDVR0fBEQwQjBAoD6gPIY6aHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9ncy9n
c3BlcnNvbmFsc2lnbnB0bnJzc2hhMmcyLmNybDBMBgNVHSAERTBDMEEGCSsGAQQBoDIBKDA0MDIG
CCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzANBgkqhkiG
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
BQUHMAKGNGh0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dzaHZzbWltZWNhMS5j
cnQwHQYDVR0OBBYEFJ2Vb0jiXUWlD5ibz23a558NzWOgMB8GA1UdIwQYMBaAFMs4ErDHmcB4koyz
IZXm9CZiwOA/MEwGA1UdIARFMEMwQQYJKwYBBAGgMgEoMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8v
d3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMDsGA1UdHwQ0MDIwMKAuoCyGKmh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NodnNtaW1lY2ExLmNybDAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0l
BBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMA0GCSqGSIb3DQEBCwUAA4IBAQCk2Fht/QkHdD9YQlQ/
/BoVlZzl+wg2oB8mPQEGNN49NfSL/ERAGoituF3/Zv+xv6owWk2Xp+sTA69OuAt2wZ4O0pXm2NNb
yE0QS1h/jH61IgJY4dU65qPcUYmkEdBDRX3XzR1wmnDc3yelHxlYerMuJFmSM5g4dIjbdpOlHTGh
jnWrjPPoGaT9nEbPfTxkahJTybnCIMuQbt8nl2QdV64GhBMCQWbIW1xY6Uv0FZcadQhF1vzhd/OH
qGkK98y1Dz/54GBO4A8jOSeDFuh+l2iygTcH16xKfB0XvhoUGdrru24FTEY7p4VTKkw+eJbUvdod
PlESVftk7+JISQWxBEYKMYICXjCCAloCAQEwXDBMMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xv
YmFsU2lnbiBudi1zYTEiMCAGA1UEAxMZR2xvYmFsU2lnbiBIViBTL01JTUUgQ0EgMQIMROfpbOE2
LmBNcT9PMA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCDmLEtWJ++CZZLkFi4eNqqO
16rtLl6geFH9LGPHnrtQ8DAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEP
Fw0xOTEyMTcwMjE2NDJaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsGCSqGSIb3DQEBBzALBglg
hkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAf39y/+txtHx2UwcM0mygtOSXu1iplh40QteZIArt
3jbBQobYqnQMDLwCoD5A8p5/soAs0Gfg/efZ0OTtCb4tlf1StH5eHBxd2A7lziFfiQXrhv4nb+T4
pt7InQ0UiQPXBR4FcqG9xwL78oCI1ecowCHYGk0ZjHpnI/BVVERCbb9v8OUBe1AYCLS9G0YxQxkv
3SwzwlWuwNmNYNrIVMkiytCk3ayZ2WnKFbR2KlgrCzSS4dp9rqtjdVTOrjHnfxL2hnG4ZYau6nYU
4SxmeGAdxVtHh+mxIYMEQtPvKIRnFqqexVZkqetIkz2Uel7bYKdDZIkNPE66fKnLF7i4sGefgA==
--0000000000004a669e0599dcebd5--
